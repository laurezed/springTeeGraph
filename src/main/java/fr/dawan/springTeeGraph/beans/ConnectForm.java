package fr.dawan.springTeeGraph.beans;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.validation.constraints.NotNull;

public class ConnectForm implements Serializable {

	@NotNull(message = "*champ obligatoire")
	private String nom;
	
	@NotNull(message = "*champ obligatoire")
	private String prenom;
	
	@NotNull(message = "*champ obligatoire")
	private String dateNaissance;
	
	@NotNull(message = "*champ obligatoire")
	private String adresse;
	
	@NotNull(message = "*champ obligatoire")
	private String codePostale;
	
	@NotNull(message = "*champ obligatoire")
	private String ville;
	
	private String telephoneFixe;
	
	@NotNull(message = "*champ obligatoire")
	private String telephoneMobile;
	
	@NotNull(message = "*champ obligatoire")
	private String email;
	
	@NotNull(message = "*champ obligatoire")
	private String password;
	
	@NotNull(message = "*champ obligatoire")
	private String passwordNew;
	
	@NotNull(message = "*champ obligatoire")
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
		return codePostale;
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
	
	
	
}
