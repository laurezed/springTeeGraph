package fr.dawan.springTeeGraph.controleurs;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.annotation.RequestScope;

import fr.dawan.springTeeGraph.entites.Utilisateur;
import fr.dawan.springTeeGraph.service.UserService;


//import fr.dawan.springTeeGraph.beans.UserForm;
//import fr.dawan.springTeeGraph.entities.User;
//import fr.dawan.springTeeGraph.service.UserService;

@Controller
@RequestMapping("/")
public class Accueil {

//	@Autowired
//	private UserService userService;
	
	@Autowired
	private MessageSource messageSource;

	
	@GetMapping({"/accueil", "/"})
	public String display(Model model)
	{
		model.addAttribute("msg","Je crois que j'y arrive maintenant");
		
		return "index";
	}
	
	@GetMapping({"/index"})
	public String Test(Model model)
	{
		UserService us = new UserService();
		Utilisateur user = null;
		try {
			user = new Utilisateur(0,0,"Papy","Chulo",new SimpleDateFormat("dd/MM/yyyy").parse("31/07/1832"),"rue de la paix","80140", "rouen", "0322445566", "0631313131", "papy@gmail.com","mauroDeconnePas", "utilisateur" );
			us.create(user);
		}  catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("utilisateur",user);
		model.addAttribute("msg","Je crois que j'y arrive maintenant");
		
		return "index";
	}

}
