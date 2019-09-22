package fr.dawan.springTeeGraph.controleurs;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletResponse;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


import fr.dawan.springTeeGraph.beans.UserForm;
import fr.dawan.springTeeGraph.entites.Serigraphie;
import fr.dawan.springTeeGraph.entites.Utilisateur;
import fr.dawan.springTeeGraph.service.ProduitService;
import fr.dawan.springTeeGraph.service.UserService;

@Controller
@RequestMapping("/")
public class HomeController {

	@Autowired
	ProduitService produitService;
	@Autowired
	UserService userService;

	private static Logger logger = Logger.getLogger(AfficherProduitControleur.class);

	@RequestMapping("")
	public String display(Model model, HttpSession session) {//, @CookieValue(value = "maSession", defaultValue = "vide") String c, HttpServletResponse response) {
		logger.info("DEBUT - afficher produit.model : " + model.toString());

		List<Serigraphie> myList;
		String msg = "";
		try {
			logger.info("DEBUT - afficher appel findAll : " + model.toString());
			myList = produitService.findAll();
			model.addAttribute("myList", myList);
		} catch (Exception e) {
			e.printStackTrace();
			msg = "Erreur lors du chargement des sérigraphies";
		} 

//System.out.println("C cookie : " + c);
//		if (!c.equals("vide")) {
//			Cookie cookie = new Cookie("maSession", c);
//System.out.println("cookie : " + cookie.getValue());
////			response.addCookie(cookie);
//		} else {
//			// recupérer la valeur de l'ancien cookie
//			// ajouter des infos
//			Cookie cookie = new Cookie("maSession", c);
//			cookie.setMaxAge(60 * 60 * 24 * 365 * 10);// en seconde
//			cookie.setDomain("teegraph");
//			cookie.setValue("utilisateur_anonyme");
//			cookie.setHttpOnly(true);
//			response.addCookie(cookie);
////			response.
//			model.addAttribute("cookie", cookie.getValue());
//System.out.println("cookie2 : " + cookie.getValue());
//		}
//		HttpSession u2 = (HttpSession)session.getAttribute("user");
////		System.out.println("cookie: " + u.getNom());
////		System.out.println("cookie: " + u.getNom());
//		Utilisateur u = null;
//		if(u2 == null) {
//			u = new Utilisateur();
//			u.setNom("Anomyme");
//			u.setPrenom("Utilisateur");
//			session.setAttribute("user", u);
//		}
//		else {
//			logger.info("DEBUT - session actuelle : " + u2.getAttributeNames());
//			System.out.println("session actuelle: " + u2.getAttributeNames());
//		}
		Utilisateur u3 = (Utilisateur)session.getAttribute("user");
//		System.out.println("cookie: " + u.getNom());
//		System.out.println("cookie: " + u.getNom());
		Utilisateur u4 = null;
//		if(u3 != null)
		if(u3 == null) {
			u4 = new Utilisateur();
			u4.setNom("Anomyme");
			u4.setPrenom("Utilisateur");
			session.setAttribute("user", u4);
			logger.info("DEBUT - (null)utilisateur actuel : " + u4.getNom());
			System.out.println("(null)utilisateur actuel: " + u4.getEmail());
		}
		else if(u3.getNom() == "Anomyme") {
//			u4 = new Utilisateur();
//			u4.setNom("Anomyme");
//			u4.setPrenom("Utilisateur");
			session.setAttribute("user", u3);
			logger.info("DEBUT - (anonyme)utilisateur actuel : " + u3.getNom());
			System.out.println("(anonyme)utilisateur actuel: " + u3.getEmail());
		}
		else {
			logger.info("DEBUT - utilisateur actuel : " + u3.getNom());
			System.out.println("utilisateur actuel: " + u3.getEmail());
			try {
				Utilisateur user = userService.findByString(u3.getEmail());
				model.addAttribute("user", user);
			} 
			catch (Exception e) {
				e.printStackTrace();
				msg = "Erreur lors du chargement de l'utilisateur";
			} 
			finally {
				logger.info("FIN - utilisateur actuel : " + u3.getEmail());
			}
		}
		
		model.addAttribute("msg", msg);
		
//
//		String emailID = "mauro.fadika@led-prog.fr";
//
//		SendMail.sendEmail(emailID,"Renseignement sérigraphie simple", "Votre nouvelle serigraphie vient d'arriver!");

		
		return "home";
	}

	@ModelAttribute("userBean")
	public UserForm getUserForm() {
		return new UserForm();
	}

}
