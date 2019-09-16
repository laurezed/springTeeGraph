package fr.dawan.springTeeGraph.controleurs;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import fr.dawan.springTeeGraph.beans.ProduitForm;
import fr.dawan.springTeeGraph.entites.Modele;
import fr.dawan.springTeeGraph.entites.ProduitFini.Taille;
import fr.dawan.springTeeGraph.entites.Serigraphie;
import fr.dawan.springTeeGraph.service.ModeleService;
import fr.dawan.springTeeGraph.service.ProduitService;

@Controller
@RequestMapping("/product")
public class AfficherProduitControleur {

	@Autowired
	ProduitService produitService;


	ModeleService modeleService;

	@GetMapping
	public String afficher(Model model) {

		List<Serigraphie> myList;
		String msg = "";
		try {
			myList = produitService.findAll();
			model.addAttribute("myList", myList);
		} catch (Exception e) {
			e.printStackTrace();
			msg = "Erreur lors du chargement des sérigraphies";
		}

		model.addAttribute("msg", msg);
		return "afficher";
	}

	@GetMapping(value = "/{s_nom}")
	public String popup(@Valid @ModelAttribute("ProduitForm") ProduitForm produitForm, BindingResult br,
			@PathVariable("s_nom") String s_nom, Model model) {

//		List<Serigraphie> myList;
//		model.addAttribute("myList",myList);
		modeleService = new ModeleService();

		Serigraphie seri = null;
		String msg = "";
		String msg2 = "";
		try {
			System.out.println(s_nom);
			seri = produitService.findByName(s_nom);
//			model.addAttribute("serigraphie", seri);
			Serigraphie sg = produitService.findByName(s_nom);

			produitForm = new ProduitForm();
			produitForm.setId(sg.getId());
			produitForm.setReferenceProduit(sg.getReferenceProduit());
			produitForm.setDesignation(sg.getDesignation());
			produitForm.setPhoto(sg.getPhoto());

		} catch (Exception e) {
			e.printStackTrace();
			msg = "Erreur lors du chargement de la sérigraphie";
			msg = e.getMessage();
		}
		
		
		List<Modele> modeles = null;
		try {
			modeles = modeleService.findAll();
		} catch (Exception e) {
			e.printStackTrace();
			msg2 = e.getMessage();
		}

		model.addAttribute("modeles", modeles);

		model.addAttribute("tailles", Taille.values());
		model.addAttribute("produitForm", produitForm);

		model.addAttribute("ajax", "ma réponse ajax");

		model.addAttribute("msg", msg);
		model.addAttribute("msg2", msg2);

//		{ "seri" : seri };
		return "selectProduit";
	}

	@ModelAttribute("ProduitForm")
	public ProduitForm getProduitForm() {
		return new ProduitForm();
	}

}
