package fr.dawan.springTeeGraph.beans;

import java.io.Serializable;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

@Component
public class UserForm implements Serializable{

	private static final long serialVersionUID = 1L;

	@NotNull(message = "remplir le champ")
	private String email;
	
	@Size(min = 4, max = 15, message = "La taille du mot de passe doit etre comprise entre 4 et 15 caractères")
	@NotNull(message = "remplir le champ")
	private String password;

	public UserForm() {

	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
}
