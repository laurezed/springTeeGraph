package fr.dawan.springTeeGraph.controleurs;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.annotation.RequestScope;


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

}
