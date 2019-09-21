package fr.dawan.springTeeGraph.beans;

import java.io.Serializable;

import javax.validation.constraints.NotNull;

public class ConnectForm implements Serializable {

	@NotNull(message = "{connect.field.required}")
	private String nom;
	
	@NotNull(message = "{connect.field.required}")
	private String prenom;
	
	@NotNull(message = "{connect.field.required}")
	private String dateNaissance;
	
	@NotNull(message = "{connect.field.required}")
	private String adresse;
	
	@NotNull(message = "{connect.field.required}")
	private String codePostale;
	
	@NotNull(message = "{connect.field.required}")
	private String ville;
	
	private String telephoneFixe;
	
	@NotNull(message = "{connect.field.required}")
	private String telephoneMobile;
	
	@NotNull(message = "{connect.field.required}")
	private String email;

	// Pour la confirmation de l'email
	@NotNull(message = "{connect.field.required}")
	private String email2;
	
	@NotNull(message = "{connect.field.required}")
	private String password;
	
	@NotNull(message = "{connect.field.required}")
	private String passwordNew;
	
	@NotNull(message = "{connect.field.required}")
	private String passwordNewConf;

	public String getNom() {
		return this.nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return this.prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getDateNaissance() {
		return this.dateNaissance;
	}

	public void setDateNaissance(String dateNaissance) {
		this.dateNaissance = dateNaissance;
	}

	public String getAdresse() {
		return this.adresse;
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
		return this.ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public String getTelephoneFixe() {
		return this.telephoneFixe;
	}

	public void setTelephoneFixe(String telephoneFixe) {
		this.telephoneFixe = telephoneFixe;
	}

	public String getTelephoneMobile() {
		return this.telephoneMobile;
	}

	public void setTelephoneMobile(String telephoneMobile) {
		this.telephoneMobile = telephoneMobile;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPasswordNew() {
		return this.passwordNew;
	}

	public void setPasswordNew(String passwordNew) {
		this.passwordNew = passwordNew;
	}

	public String getPasswordNewConf() {
		return this.passwordNewConf;
	}

	public void setPasswordNewConf(String passwordNewConf) {
		this.passwordNewConf = passwordNewConf;
	}

	public String getEmail2() {
		return this.email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
	}
	
	
	
}
