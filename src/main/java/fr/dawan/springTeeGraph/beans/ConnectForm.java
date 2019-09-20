package fr.dawan.springTeeGraph.beans;

import java.io.Serializable;

import javax.validation.constraints.NotNull;

public class ConnectForm implements Serializable {

	@NotNull(message = "{connect.champ.obligatoire}")
	private String nom;
	
	@NotNull(message = "{connect.champ.obligatoire}")
	private String prenom;
	
	@NotNull(message = "{connect.champ.obligatoire}")
	private String dateNaissance;
	
	@NotNull(message = "{connect.*champ.obligatoire}")
	private String adresse;
	
	@NotNull(message = "{connect.*champ.obligatoire}")
	private String codePostale;
	
	@NotNull(message = "{connect.*champ.obligatoire}")
	private String ville;
	
	private String telephoneFixe;
	
	@NotNull(message = "{connect.*champ.obligatoire}")
	private String telephoneMobile;
	
	@NotNull(message = "{connect.*champ.obligatoire}")
	private String email;

	// Pour la confirmation de l'email
	@NotNull(message = "{connect.*champ.obligatoire}")
	private String email2;
	
	@NotNull(message = "{connect.*champ.obligatoire}")
	private String password;
	
	@NotNull(message = "{connect.*champ.obligatoire}")
	private String passwordNew;
	
	@NotNull(message = "{connect.*champ.obligatoire}")
	private String passwordNewConf;

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getDateNaissance() {
		return dateNaissance;
	}

	public void setDateNaissance(String dateNaissance) {
		this.dateNaissance = dateNaissance;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getCodePostale() {
		return this.codePostale;
	}

	public void setCodePostale(String codePostale) {
		this.codePostale = codePostale;
	}

	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public String getTelephoneFixe() {
		return telephoneFixe;
	}

	public void setTelephoneFixe(String telephoneFixe) {
		this.telephoneFixe = telephoneFixe;
	}

	public String getTelephoneMobile() {
		return telephoneMobile;
	}

	public void setTelephoneMobile(String telephoneMobile) {
		this.telephoneMobile = telephoneMobile;
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

	public String getPasswordNew() {
		return passwordNew;
	}

	public void setPasswordNew(String passwordNew) {
		this.passwordNew = passwordNew;
	}

	public String getPasswordNewConf() {
		return passwordNewConf;
	}

	public void setPasswordNewConf(String passwordNewConf) {
		this.passwordNewConf = passwordNewConf;
	}

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
	}
	
	
	
}
