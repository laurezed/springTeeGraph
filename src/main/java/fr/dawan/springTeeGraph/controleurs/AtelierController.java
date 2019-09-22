package fr.dawan.springTeeGraph.controleurs;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

import fr.dawan.springTeeGraph.beans.UserForm;

@Controller
@RequestMapping("qui-sommes-nous")
public class AtelierController {

	@GetMapping("/atelier")
	public String display(Model model) {

		return "atelier";
	}

	@ModelAttribute("userBean")
	public UserForm getUserForm() {
		return new UserForm();
	}
	
}
