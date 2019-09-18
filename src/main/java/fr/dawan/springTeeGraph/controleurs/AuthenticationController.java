package fr.dawan.springTeeGraph.controleurs;

import java.sql.Date;
import java.text.ParseException;

import javax.validation.Valid;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import fr.dawan.springTeeGraph.beans.ConnectForm;
import fr.dawan.springTeeGraph.beans.PasswordForm;
import fr.dawan.springTeeGraph.beans.UserForm;
import fr.dawan.springTeeGraph.entites.Utilisateur;
import fr.dawan.springTeeGraph.service.UserService;

@Controller
@RequestMapping("/auth")
public class AuthenticationController {

	@Autowired
	private UserService userService;
	
	private static Logger logger = Logger.getLogger(AuthenticationController.class);
	
	@RequestMapping("/member")
	public String authentication(@Valid @ModelAttribute("userBean") UserForm userForm, BindingResult br, Model model) {
		
		logger.info("DEBUT - authentification membre.userBean: " + userForm.toString() );
		
		String email = userForm.getEmail();
		String msg = "";
		Utilisateur u = null;

		if (email != null && !email.isEmpty()) {
			try {
				logger.info("DEBUT - authentification findByString " + userForm.toString() );
				u = userService.findByString(userForm.getEmail());
				model.addAttribute("user", u);
			} catch (Exception e) {
				e.printStackTrace();
				msg = "email incorrect";
				model.addAttribute("msg", msg);
				return "home";
			}
		} else {logger.info("FIN - authentification findByString " + userForm.toString() );
			
			msg = "Veuillez remplir le champ email";
			model.addAttribute("msg", msg);
			return "home";
		}

		if (u != null && u.getPassword() != null && u.getPassword().equals(userForm.getPassword())) {

			model.addAttribute("connecte", "connecte");
//			model.addAttribute("user", u);
			return "home";
		} else {
			msg = "Couple login password incorrect";
			model.addAttribute("msg", msg);
			model.addAttribute("connecte", "connecte");
			logger.info("FIN - authentification membre.userBean: " + userForm.toString() );
			return "home";
		}	
	}

	@RequestMapping("/member/{id}")
	public String afficheProfil(@ModelAttribute("cocoBean") ConnectForm connectForm, @PathVariable("id") String id,
			BindingResult br, Model model) {
//		String email = userForm.getEmail();
		logger.info("DEBUT - afficheProfil findById: " + connectForm.toString() );
		String msg = "";
		Utilisateur u = null;

		try {
			u = userService.findById(Long.parseLong(id));
			model.addAttribute("userToModify", u);

			connectForm.setNom(u.getNom());
			connectForm.setPrenom(u.getPrenom());
			connectForm.setAdresse(u.getAdresse());
			connectForm.setCodePostale(u.getCodePostale());
			connectForm.setVille(u.getVille());
			connectForm.setTelephoneFixe(u.getTelephoneFixe());
			connectForm.setTelephoneMobile(u.getTelephoneMobile());
			connectForm.setEmail(u.getEmail());
//			connectForm.setDateNaissance(Date.valueOf(u.getDateNaissance().toString()).toString());

			model.addAttribute("userForm", new ConnectForm());
			return "membre";
		} catch (Exception e) {
			e.printStackTrace();
			msg = "email incorrect";
			model.addAttribute("msg", msg);
			logger.info("FIN - afficheProfil findById: " + connectForm.toString() );
			return "home";
		}

	}

	// modifier
	@PostMapping("/modify")
	public String UserModify(@ModelAttribute("passwordForm") PasswordForm passwordForm,
			@ModelAttribute("cocoBean") ConnectForm connectForm, Model model) {
		try {
			logger.info("DEBUT - modify findByString: " + passwordForm.toString() );
			Utilisateur u = userService.findByString(connectForm.getEmail());

//			System.out.println("userToModify: " + connectForm.getCodePostale());

			if (connectForm.getNom() != null && u.getNom() != connectForm.getNom()) {
				u.setNom(connectForm.getNom());
			}
			if (connectForm.getPrenom() != null && u.getPrenom() != connectForm.getPrenom()) {
				u.setPrenom(connectForm.getPrenom());
			}
			if (connectForm.getDateNaissance() != null
					&& u.getDateNaissance() != Date.valueOf(connectForm.getDateNaissance())) {
				u.setDateNaissance(Date.valueOf(connectForm.getDateNaissance()));
			}
			if (connectForm.getAdresse() != null && u.getAdresse() != connectForm.getAdresse()) {
				u.setAdresse(connectForm.getAdresse());
			}
			if (connectForm.getCodePostale() != null && u.getCodePostale() != connectForm.getCodePostale()) {
				u.setCodePostale(connectForm.getCodePostale());
			}
			if (connectForm.getVille() != null && u.getVille() != connectForm.getVille()) {
				u.setVille(connectForm.getVille());
			}
			if (connectForm.getTelephoneFixe() != null && u.getTelephoneFixe() != connectForm.getTelephoneFixe()) {
				u.setTelephoneFixe(connectForm.getTelephoneFixe());
			}
			if (connectForm.getTelephoneMobile() != null
					&& u.getTelephoneMobile() != connectForm.getTelephoneMobile()) {
				u.setTelephoneMobile(connectForm.getTelephoneMobile());
			}


			userService.update(u);
			model.addAttribute("userToModify", u);
			model.addAttribute("msg", "Votre profil a bien été modifié");
			model.addAttribute("passwordForm", new PasswordForm());

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
			model.addAttribute("msg", "Erreur lors la modification");

		}
		model.addAttribute("connecte", "connecte");
		logger.info("FIN - modify findByString: " + passwordForm.toString() );
		return "membre";
	}

	@PostMapping("/password")
	public String ChangePassword(@ModelAttribute("passwordForm") PasswordForm passwordForm,
			@ModelAttribute("cocoBean") ConnectForm connectForm, BindingResult br, Model model) {
		logger.info("DEBUT - ChangePassword: " + passwordForm.toString() );
		model.addAttribute("passwordForm", passwordForm);
		Utilisateur u = null;
		try {
			logger.info("DEBUT - ChangePassword findByString : " + passwordForm.toString() );
			u = userService.findByString(passwordForm.getEmail());
		} catch (Exception e) {
			
			e.printStackTrace();
			System.out.println(e.getMessage());
			model.addAttribute("msg", "Erreur lors la modification");

		}
		String actualPassword = passwordForm.getActualPassword();
		String newPassword = passwordForm.getNewPassword();
		String newPasswordConf = passwordForm.getNewPasswordConf();
		System.out.println(actualPassword);
		System.out.println(newPassword);
		System.out.println(newPasswordConf);

		try {
//			System.out.println("userToModify: " + connectForm.getCodePostale());
			if (actualPassword != null && newPassword != null && newPasswordConf != null) {
//				if(!actualPassword.isEmpty() && !newPassword.isEmpty() && !newPasswordConf.isEmpty()) {
				if (actualPassword.equals(u.getPassword())) {
					u.setPassword(newPassword);
					userService.update(u);
				}
//				}
			}

			model.addAttribute("userToModify", u);

			model.addAttribute("msg", "Votre mot de passe a bien été modifié");

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
			model.addAttribute("msg", "Erreur lors la modification");

		}

		model.addAttribute("connecte", "connecte");
		logger.info("FIN - ChangePassword findByString : " + passwordForm.toString() );
		return "membre";
	}

	// en reference au lien de la page home pour lancer une nouvelle inscription
	@GetMapping("/noMember")
	public String display(Model model) {
	logger.info("DEBUT - afficher: " + model.toString() );
	logger.info("FIN - afficher: " + model.toString() );

		return "nonMembre";
		
	}

	// pour enregistrer le nouveau membre en BDD
	@PostMapping("/load")
	public String load(@Valid @ModelAttribute("cocoBean") ConnectForm connectForm, BindingResult br, Model model) {
		logger.info("DEBUT - Load: " + connectForm.toString() );
		String msg = "";
		if (connectForm.getEmail().equals(connectForm.getEmail2())) {
			try {
				
				Utilisateur u = new Utilisateur(0, 0, connectForm.getNom(), connectForm.getPrenom(),
						Date.valueOf(connectForm.getDateNaissance()), connectForm.getAdresse(),
						connectForm.getCodePostale(), connectForm.getVille(), connectForm.getTelephoneFixe(),
						connectForm.getTelephoneMobile(), connectForm.getEmail(), connectForm.getPassword(),
						"utilisateur");

				userService.create(u);
				model.addAttribute("user", u);
				// bravo nouveau client chargé en BDD!!!!!
				msg = "Félicitation et bienvenue parmi nos membres actifs!";

			} catch (ParseException e) {
				e.printStackTrace();
				msg = "Erreur lors du formattage de la date";

			} catch (Exception e) {
				e.printStackTrace();
				msg = "Une erreur est survenue";
			}
		}

		model.addAttribute("msg", msg);
		model.addAttribute("connecte", "connecte");
		logger.info("FIN - Load: " + connectForm.toString() );
		return "home";

	}

	@ModelAttribute("userBean")
	public UserForm getUserForm() {
		return new UserForm();
	}

	@ModelAttribute("connectBean")
	public ConnectForm getConnectForm() {
		return new ConnectForm();
	}

	@ModelAttribute("passwordBean")
	public PasswordForm PasswordForm() {
		return new PasswordForm();
	}

}
