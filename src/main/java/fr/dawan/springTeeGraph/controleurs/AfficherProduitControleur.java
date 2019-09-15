package fr.dawan.springTeeGraph.controleurs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import fr.dawan.springTeeGraph.entites.Serigraphie;
import fr.dawan.springTeeGraph.service.ProduitService;

@Controller
@RequestMapping("/product")
public class AfficherProduitControleur {

	@Autowired
	ProduitService produitService;

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

	@PostMapping(value = "/{s_nom}", produces = "application/json")
	@ResponseBody
	public String popup(@PathVariable("s_nom") String s_nom, Model model) {

//		List<Serigraphie> myList;
//		model.addAttribute("myList",myList);

		Serigraphie seri = null;
		String msg = "";
		try {
			System.out.println(s_nom);
			seri = produitService.findByName(s_nom);
			model.addAttribute("serigraphie", seri);
		} catch (Exception e) {
			e.printStackTrace();
			msg = "Erreur lors du chargement de la sérigraphie";
		}

		model.addAttribute("ajax", "ma réponse ajax");

		ObjectMapper mapper = new ObjectMapper();

		// Java object to JSON string
		String jsonString = null;
		try {
			jsonString = mapper.writeValueAsString(seri);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
			msg = "Erreur lors du chargement de la sérigraphie";
		}

		model.addAttribute("msg", msg);

//		{ "seri" : seri };
		return jsonString;
	}

}
