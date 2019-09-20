package fr.dawan.springTeeGraph.controleurs;

import java.util.List;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import fr.dawan.springTeeGraph.beans.ProduitForm;
import fr.dawan.springTeeGraph.entites.LigneCommande;
import fr.dawan.springTeeGraph.entites.Modele;
import fr.dawan.springTeeGraph.entites.ProduitFini;
import fr.dawan.springTeeGraph.entites.ProduitFini.Color;
import fr.dawan.springTeeGraph.entites.ProduitFini.Taille;
import fr.dawan.springTeeGraph.entites.Serigraphie;
import fr.dawan.springTeeGraph.service.ModeleService;
import fr.dawan.springTeeGraph.service.ProduitService;

@Controller
@RequestMapping("/commande")
public class LigneCommandeControleur {
	/**
	 * 
	 */

	@Autowired
	ProduitService produitService;

	 private static Logger logger = Logger.getLogger(AfficherProduitControleur.class);

	@PostMapping
	public String creeLigneCommande(@ModelAttribute("ProduitForm") ProduitForm produitForm, BindingResult br,
			Model model) {

		ModeleService ms = new ModeleService();
		Modele modele = null;
		try {
			modele = ms.findByName(produitForm.getModele());
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		ProduitService ps = new ProduitService();
		Serigraphie seri = null;
		try {
			seri = ps.findByName(produitForm.getSerigraphie());
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		ProduitFini produitFini = new ProduitFini(0L, 0, Color.valueOf(produitForm.getColor().toUpperCase()), Taille.valueOf(produitForm.getTaille().toUpperCase()),
				modele, seri);
		
		try {
			produitService.create(produitFini, 0, true);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		LigneCommande lCommande = new LigneCommande(0, 1, 10, 15, produitFini);
		lCommande.setProduitFini(produitFini);
		
		try {
			lCommande = produitService.create(lCommande, 1, true);
		} catch (Exception e) {
			e.printStackTrace();
		}
		

		List<Serigraphie> myList;
		String msg = "";
		try {
			logger.info("DEBUT - creeLigneCommande appel findAll : " + model.toString() );
			myList = produitService.findAll();
			model.addAttribute("myList", myList);
		} catch (Exception e) {
			e.printStackTrace();
			msg = "Erreur lors du chargement des sérigraphies";
		}
		finally {
			logger.info("FIN - creeLigneCommande fin d'appel findAll : " + model.toString() );
		}

		
		
		return "selectProduit2";

	}

}
