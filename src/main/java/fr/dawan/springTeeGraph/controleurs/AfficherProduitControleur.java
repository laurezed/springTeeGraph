package fr.dawan.springTeeGraph.controleurs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import fr.dawan.springTeeGraph.dao.SerigraphieDao;
import fr.dawan.springTeeGraph.entites.Serigraphie;

@Controller
@RequestMapping("/product")
public class AfficherProduitControleur{

	@Autowired
	SerigraphieDao seridao;
	
	@GetMapping("")
	public String afficher(Model model){
		
		List<Serigraphie> myList;
		myList = seridao.readAll();
		model.addAttribute("myList",myList);
		
		
		return "afficher";
	}
	
	@GetMapping("")
	public String popup(Model model){
		
//		List<Serigraphie> myList;
//		model.addAttribute("myList",myList);

		model.addAttribute("ajax","ma réponse ajax");
		
		
		
		return "afficher";
	}
	
	
}
