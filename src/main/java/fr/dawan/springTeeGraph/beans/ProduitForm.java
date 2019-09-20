package fr.dawan.springTeeGraph.beans;

import java.io.Serializable;

import javax.validation.constraints.NotNull;

import org.springframework.stereotype.Component;

@Component
public class ProduitForm implements Serializable {

	private static final long serialVersionUID = 1L;

	private long id;

	private int version;

	@NotNull(message = "Ce champs ne doit pas être vide")
	private String serigraphie;

	@NotNull(message = "Ce champs ne doit pas être vide")
	private String color;

	@NotNull(message = "Ce champs ne doit pas être vide")
	private String taille;

	@NotNull(message = "Ce champs ne doit pas être vide")
	private String modele;

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

	public String getSerigraphie() {
		return serigraphie;
	}

	public void setSerigraphie(String serigraphie) {
		this.serigraphie = serigraphie;
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

}
