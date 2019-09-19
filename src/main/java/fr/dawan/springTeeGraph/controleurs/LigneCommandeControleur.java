package fr.dawan.springTeeGraph.controleurs;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import fr.dawan.springTeeGraph.entites.LigneCommande;
import fr.dawan.springTeeGraph.service.ProduitService;

@Controller
@RequestMapping("/commande")
public class LigneCommandeControleur {
	/**
	 * 
	 */
	
	@Autowired
	ProduitService produitService;
	
	@GetMapping("/")
	public <Produit> void  creeLigneCommande(Model model) throws Exception {
		
		LigneCommande lCommande = new LigneCommande(0, 1, 10, 15);
		try {
			lCommande =	 produitService.create(lCommande, 1, true);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
	}
	
}
