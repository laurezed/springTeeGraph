package fr.dawan.springTeeGraph.controleurs;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

import fr.dawan.springTeeGraph.beans.UserForm;
import fr.dawan.springTeeGraph.service.UserService;
import fr.dawan.springTeeGraph.utils.SessionManagement;

@Controller
@RequestMapping("qui-sommes-nous")
public class AtelierController {

	@Autowired
	UserService userService;

	@GetMapping("/atelier")
	public String display(Model model, HttpSession session) {

		SessionManagement.setUserSession(model, userService, session, null);
		return "atelier";
	}

	@ModelAttribute("userBean")
	public UserForm getUserForm() {
		return new UserForm();
	}
	
}
