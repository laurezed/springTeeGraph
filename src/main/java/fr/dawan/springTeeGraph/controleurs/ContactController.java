package fr.dawan.springTeeGraph.controleurs;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import fr.dawan.springTeeGraph.beans.UserForm;
import fr.dawan.springTeeGraph.service.UserService;
import fr.dawan.springTeeGraph.utils.SessionManagement;

@Controller
@RequestMapping("on-echange")
public class ContactController {

	@Autowired
	UserService userService;
	
	@GetMapping("/contact")
	public String display(Model model, HttpSession session) {

		SessionManagement.setUserSession(model, userService, session, null);
		return "contact";
	}

	@ModelAttribute("userBean")
	public UserForm getUserForm() {
		return new UserForm();
	}
	
}
