package fr.dawan.springTeeGraph.utils;

import javax.servlet.http.HttpSession;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import fr.dawan.springTeeGraph.controleurs.AfficherProduitControleur;
import fr.dawan.springTeeGraph.entites.Utilisateur;
import fr.dawan.springTeeGraph.service.UserService;

@Controller
public class SessionManagement {

	private static Logger logger = Logger.getLogger(AfficherProduitControleur.class);

	
	public static void setUserSession(Model model, UserService userService, HttpSession session, Utilisateur user) {

		Utilisateur us = (Utilisateur) session.getAttribute("user");

		Utilisateur u4 = null;
//		if(us == null || us.getNom() == "Anonyme") {
//			us = new Utilisateur();
		if (us == null) {
			u4 = new Utilisateur();
			u4.setNom("Anomyme");
			u4.setPrenom("Utilisateur");
			session.setAttribute("user", u4);
			session.setMaxInactiveInterval(30*60);
			logger.info("DEBUT - (null)utilisateur actuel : " + u4.getNom());
			System.out.println("(null)utilisateur actuel: " + u4.getEmail());
		} else if (us.getNom() == "Anomyme") {
			session.setAttribute("user", us);
			session.setMaxInactiveInterval(30*60);
			logger.info("DEBUT - (anonyme)utilisateur actuel : " + us.getNom());
			System.out.println("(anonyme)utilisateur actuel: " + us.getEmail());
		} else {
			if (user != null) {
				us.setNom(user.getNom());
				us.setPrenom(user.getNom());
				us.setEmail(user.getEmail());
				session.setAttribute("user", us);
				session.setMaxInactiveInterval(30*60);
				model.addAttribute("user", user);
				logger.info("DEBUT - utilisateur actuel : " + us.getNom());
				System.out.println("utilisateur actuel: " + us.getId());
			}
			else {
				logger.info("DEBUT - utilisateur actuel : " + us.getNom());
				System.out.println("utilisateur actuel: " + us.getEmail());
				try {
					Utilisateur utilisateurConnu = userService.findByString(us.getEmail());
					session.setAttribute("user", us);
					session.setMaxInactiveInterval(30*60);
					model.addAttribute("user", utilisateurConnu);
				} 
				catch (Exception e) {
					e.printStackTrace();
				} 
				finally {
					logger.info("FIN - utilisateur actuel : " + us.getEmail());
				}
			}
		}
	}
}
