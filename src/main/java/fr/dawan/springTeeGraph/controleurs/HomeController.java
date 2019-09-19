package fr.dawan.springTeeGraph.controleurs;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import fr.dawan.springTeeGraph.beans.UserForm;

@Controller
@RequestMapping("/")
public class HomeController {
	
	
	@GetMapping("")
	public String display(Model model)
	{
		return "home";
	}

	
	@ModelAttribute("userBean")
	public UserForm getUserForm() {
		return new UserForm();
	}
	
	
	
	
}
