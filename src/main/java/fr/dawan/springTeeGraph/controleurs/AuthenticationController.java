package fr.dawan.springTeeGraph.controleurs;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;

import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import fr.dawan.springTeeGraph.beans.ConnectForm;
import fr.dawan.springTeeGraph.beans.UserForm;
import fr.dawan.springTeeGraph.entites.Utilisateur;
import fr.dawan.springTeeGraph.service.UserService;

@Controller
@RequestMapping("/auth")
public class AuthenticationController {

	@Autowired
	private UserService userService;

	@PostMapping("/member")
	public String authentication(@Valid @ModelAttribute("userBean") UserForm userForm, BindingResult br, Model model) {
		String email = userForm.getEmail();
		String msg = "";
		Utilisateur u = null;

		if (email != null && !email.isEmpty()) {
			try {
				u = userService.findByString(userForm.getEmail());

			} catch (Exception e) {
				e.printStackTrace();
				msg = "email incorrect";
				model.addAttribute("msg", msg);
				return "home";
			}
		} else {
			msg = "Veuillez remplir le champ email";
			model.addAttribute("msg", msg);
			return "home";
		}

		if (u != null && u.getPassword() != null && u.getPassword().equals(userForm.getPassword())) {
			return "membre";
		} else {
			msg = "Couple login password incorrect";
			model.addAttribute("msg", msg);
			return "home";
		}
	}

	// en reference au lien de la page home pour lancer une nouvelle inscription
	@GetMapping("/noMember")
	public String display(Model model) {

		return "nonMembre";
	}

	// pour enregistrer le nouveau membre en BDD
	@PostMapping("/load")
	public String load(@Valid @ModelAttribute("cocoBean") ConnectForm connectForm, BindingResult br, Model model) {
		String msg = "";
			try {
				Utilisateur u = new Utilisateur(0, 0, connectForm.getNom(), connectForm.getPrenom(),
						Date.valueOf(connectForm.getDateNaissance()), connectForm.getAdresse(),
						connectForm.getCodePostale(), connectForm.getVille(), connectForm.getTelephoneFixe(), connectForm.getTelephoneMobile(),
						connectForm.getEmail(),
						connectForm.getPassword(), "utilisateur");

				userService.create(u);
				// bravo nouveau client chargé en BDD!!!!!
				 msg = "Félicitation et bienvenu parmi nos membres actifs!";

			} catch (ParseException e) {
				e.printStackTrace();
				 msg = "Erreur lors du formattage de la date";

			} catch (Exception e) {
				e.printStackTrace();
				 msg = "Une erreur est survenue";
			}

			model.addAttribute("msg", msg);

			
			return "home";

	}

	
	@ModelAttribute("userBean")
	public UserForm getUserForm() {
		return new UserForm();
	}

}
