package fr.dawan.springTeeGraph.controleurs;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import fr.dawan.springTeeGraph.dao.SerigraphieDao;
import fr.dawan.springTeeGraph.entites.Serigraphie;

@Controller
@RequestMapping("/product")
public class AfficherProduit {

	@Autowired
	SerigraphieDao seridao;
	
	@GetMapping("/")
	public String afficher(Model model)
	{
		
		
		List<Serigraphie> myList;
		myList = seridao.readAll();
		

		
		model.addAttribute("myList",myList);
		return "afficher";
		
	}
	
	
}
