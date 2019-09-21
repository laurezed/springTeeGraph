package fr.dawan.springTeeGraph.controleurs;

import java.util.List;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import fr.dawan.springTeeGraph.SendMail;
import fr.dawan.springTeeGraph.beans.UserForm;
import fr.dawan.springTeeGraph.entites.Serigraphie;
import fr.dawan.springTeeGraph.service.ProduitService;

@Controller
@RequestMapping("/")
public class HomeController {

	@Autowired
	ProduitService produitService;

	private static Logger logger = Logger.getLogger(AfficherProduitControleur.class);

	@GetMapping("")
	public String display(Model model) {
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
		} finally {
			logger.info("FIN - afficher fin d'appel findAll : " + model.toString());
		}

		model.addAttribute("msg", msg);
		
		return "home";
	}

	@ModelAttribute("userBean")
	public UserForm getUserForm() {
		return new UserForm();
	}

}
