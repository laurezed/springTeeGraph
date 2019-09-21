package fr.dawan.springTeeGraph.controleurs;

import java.util.List;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import fr.dawan.springTeeGraph.beans.ProduitForm;
import fr.dawan.springTeeGraph.entites.Modele;
import fr.dawan.springTeeGraph.entites.ProduitFini.Taille;
import fr.dawan.springTeeGraph.entites.Serigraphie;
import fr.dawan.springTeeGraph.entites.Utilisateur;
import fr.dawan.springTeeGraph.service.*;

@Controller
@RequestMapping("/product")
public class AfficherProduitControleur {

	@Autowired
	ProduitService produitService;

	@Autowired
	ModeleService modeleService;

	@Autowired
	UserService userService;
	
	 private static Logger logger = Logger.getLogger(AfficherProduitControleur.class);
	@GetMapping
	public String afficher(Model model) {
		
		logger.info("DEBUT - afficher produit.model : " + model.toString() );

		List<Serigraphie> myList;
		String msg = "";
		try {
			logger.info("DEBUT - afficher appel findAll : " + model.toString() );
			myList = produitService.findAll();
			model.addAttribute("myList", myList);
		} catch (Exception e) {
			e.printStackTrace();
			msg = "Erreur lors du chargement des sérigraphies";
		}
		finally {
			logger.info("FIN - afficher fin d'appel findAll : " + model.toString() );
		}

		model.addAttribute("msg", msg);
		
		
		return "afficher";
	}

	@GetMapping(value = "/{s_nom}")
	public String popup(@PathVariable("s_nom") String s_nom, Model model) {

		logger.info("DEBUT - popup ProduitForm : " + model.toString() );
//		List<Serigraphie> myList;
//		model.addAttribute("myList",myList);
//		modeleService = new ModeleService();

		Serigraphie seri = null;
		ProduitForm produitForm = null;
		String msg = "";
		String msg2 = "";
		try {
			logger.info("DEBUT - popup appel findByName : " + model.toString() );
			System.out.println(s_nom);
//			seri = produitService.findByName(s_nom);
//			model.addAttribute("serigraphie", seri);
//			Serigraphie sg = produitService.findByName(s_nom);

			produitForm = new ProduitForm();
			produitForm.setUtilisateur("1");

		} catch (Exception e) {
			e.printStackTrace();
			msg = "Erreur lors du chargement de la sérigraphie";
			msg = e.getMessage();
			System.out.println("AfficherProduitController.popup: " + e.getMessage());
		}
		finally {
			logger.info("FIN - popup fin d'appel findByName : " + model.toString() );
		}
		
		
		List<Modele> modeles = null;
		try {
			logger.info("DEBUT - TrouverModele - findAll " + model.toString() );
			modeles = modeleService.findAll();
		} catch (Exception e) {
			e.printStackTrace();
			msg2 = e.getMessage();
		}
		finally {
			logger.info("FIN - TrouverModele - findAll : " + model.toString() );
		}

		model.addAttribute("modeles", modeles);

		model.addAttribute("tailles", Taille.values());
		model.addAttribute("produitForm", produitForm);

		model.addAttribute("msg", msg);
		model.addAttribute("msg2", msg2);

		List<Serigraphie> myList;
		try {
			logger.info("DEBUT - produitService - findAll " + modeles.toString() );
			myList = produitService.findAll(s_nom);
			System.out.println(myList.size());
			System.out.println("myList.get(0).getId() : " + myList.get(0).getId());
			model.addAttribute("myList", myList);
			model.addAttribute("indexe", myList.get(0).getId());
		} catch (Exception e) {
			e.printStackTrace();
			msg = "Erreur lors du chargement des sérigraphies";
		}finally {
			logger.info("FIN - produitsService - findAll : " + model.toString() );
		}

		logger.info("FIN - popup ProduitService : " + model.toString() );
//		{ "seri" : seri };
		return "selectProduit2";
	}

	@ModelAttribute("ProduitForm")
	public ProduitForm getProduitForm() {
		return new ProduitForm();
	}

}
