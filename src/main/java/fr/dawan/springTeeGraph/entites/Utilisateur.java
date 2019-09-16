package fr.dawan.springTeeGraph.entites;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Version;
@Entity
@Table(name="t_utilisateur")
public class Utilisateur implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@Version
	private int version;
	
	@Column(nullable = false, unique = true)
	private String nom;
	
	@Column(nullable = false)
	private String prenom;
	
	@Column(nullable = false)
	private Date dateNaissance;
	
	@Column(nullable = false)
	private String adresse;
	
	@Column(nullable = false)
	private String codePostale;
	
	@Column(nullable = false)
	private String ville;
	
	@Column
	private String telephoneFixe;
	
	@Column(nullable = false)
	private String telephoneMobile;
	
	@Column(nullable = false)
	private String email;
	
	@Column(nullable = false)
	private String password;
	//variale d'instance:
	
	@Column(nullable = false)
	private String role;
	
	//variable de classe
	private static int nbrMember;
	
	public Utilisateur() {
		super();
	}
	
	public Utilisateur(long id, int version, String nom, String prenom, Date dateNaissance, String adresse,
			String codePostale, String ville, String telephoneFixe, String telephoneMobile, String email,
			String password, String role) {
		super();
		this.id = id;
		this.version = version;
		this.nom = nom;
		this.prenom = prenom;
		this.dateNaissance = dateNaissance;
		this.adresse = adresse;
		this.codePostale = codePostale;
		this.ville = ville;
		this.telephoneFixe = telephoneFixe;
		this.telephoneMobile = telephoneMobile;
		this.email = email;
		this.password = password;
		this.role = role;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public int getVersion() {
		return version;
	}
	public void setVersion(int version) {
		this.version = version;
	}
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
	public Date getDateNaissance() {
		return dateNaissance;
	}
	public void setDateNaissance(Date dateNaissance) {
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
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public static int getNbrMember() {
		return nbrMember;
	}
	public static void setNbrMember(int nbrMember) {
		Utilisateur.nbrMember = nbrMember;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (id ^ (id >>> 32));
		result = prime * result + version;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Utilisateur other = (Utilisateur) obj;
		if (id != other.id)
			return false;
		if (version != other.version)
			return false;
		return true;
	}

	
	
}
	

	

	