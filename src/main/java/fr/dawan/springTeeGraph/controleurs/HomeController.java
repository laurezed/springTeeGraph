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
import fr.dawan.springTeeGraph.utils.SessionManagement;

@Controller
@RequestMapping("/")
public class HomeController {

	@Autowired
	ProduitService produitService;
	@Autowired
	UserService userService;

	private static Logger logger = Logger.getLogger(AfficherProduitControleur.class);

	@RequestMapping("")
	public String display(Model model, HttpSession session) {
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

		SessionManagement.setUserSession(model, userService, session, null);
		
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
