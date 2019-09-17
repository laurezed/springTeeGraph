package fr.dawan.springTeeGraph.beans;

import java.io.Serializable;

import javax.validation.constraints.NotNull;

public class PasswordForm implements Serializable {

	@NotNull(message = "*champ obligatoire")
	private String actualPassword;

	@NotNull(message = "*champ obligatoire")
	private String newPassword;

	@NotNull(message = "*champ obligatoire")
	private String newPasswordConf;

	@NotNull(message = "*champ obligatoire")
	private String email;

	public String getActualPassword() {
		return actualPassword;
	}

	public void setActualPassword(String actualPassword) {
		this.actualPassword = actualPassword;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public String getNewPasswordConf() {
		return newPasswordConf;
	}

	public void setNewPasswordConf(String newPasswordConf) {
		this.newPasswordConf = newPasswordConf;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
	
	
}
