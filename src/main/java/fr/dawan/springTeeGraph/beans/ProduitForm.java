package fr.dawan.springTeeGraph.beans;

import java.io.Serializable;

import javax.validation.constraints.NotNull;

import org.springframework.stereotype.Component;

@Component
public class ProduitForm implements Serializable {

	private static final long serialVersionUID = 1L;

	private long id;

	private int version;

//	@NotNull(message = "Ce champs ne doit pas être vide")
	private String referenceProduit;

//	@NotNull(message = "Ce champs ne doit pas être vide")
	private String designation;

//	@NotNull(message = "Ce champs ne doit pas être vide")
	private String photo;

	@NotNull(message = "Ce champs ne doit pas être vide")
	private String color;

	@NotNull(message = "Ce champs ne doit pas être vide")
	private String taille;

	@NotNull(message = "Ce champs ne doit pas être vide")
	private String modele;

	@NotNull(message = "Ce champs ne doit pas être vide")
	private String prix;

	public ProduitForm() {

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

	public String getReferenceProduit() {
		return referenceProduit;
	}

	public void setReferenceProduit(String referenceProduit) {
		this.referenceProduit = referenceProduit;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getTaille() {
		return taille;
	}

	public void setTaille(String taille) {
		this.taille = taille;
	}

	public String getModele() {
		return modele;
	}

	public void setModele(String modele) {
		this.modele = modele;
	}

	public String getPrix() {
		return prix;
	}

	public void setPrix(String prix) {
		this.prix = prix;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

}
