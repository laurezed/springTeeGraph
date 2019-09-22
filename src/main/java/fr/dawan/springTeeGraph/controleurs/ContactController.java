package fr.dawan.springTeeGraph.controleurs;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import fr.dawan.springTeeGraph.beans.UserForm;

@Controller
@RequestMapping("on-echange")
public class ContactController {

	@GetMapping("/contact")
	public String display(Model model) {

		return "contact";
	}

	@ModelAttribute("userBean")
	public UserForm getUserForm() {
		return new UserForm();
	}
	
}
