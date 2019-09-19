package fr.dawan.springTeeGraph.entites;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Version;

@Entity
@Table(name = "t_produitFini")
public class ProduitFini implements Serializable {

	private static final long serialVersionUID = 1L;

	public enum Color {
		ROUGE, BLEUFONCE, NOIR, ORANGE, BLEUCIEL, VERT
	}

	public enum Taille {
		XL, L, M, S
	};

//	public enum Modele {
//		SWEAT, TSHIRTH, TSHIRTF, PULL
//	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@Version
	private int version;

	@Column(nullable = false)
	private String referenceProduit;

	@Column(nullable = false)
	private String designation;

	@Column(nullable = false)
	private Color color;

	@Column(nullable = false)
	private Taille taille;

//	@Column(nullable = false)
	@OneToOne
	private Modele modele;

	@Column(nullable = false)
	private double prix;

	public ProduitFini() {
		super();
	}

	public ProduitFini(long id, int version, String referenceProduit, String designation, Color color, Taille taille,
			Modele modele, double prix) {
		super();
		this.id = id;
		this.version = version;
		this.referenceProduit = referenceProduit;
		this.designation = designation;
		this.color = color;
		this.taille = taille;
		this.modele = modele;
		this.prix = prix;
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

	public Color getColor() {
		return color;
	}

	public void setColor(Color color) {
		this.color = color;
	}

	public Taille getTaille() {
		return taille;
	}

	public void setTaille(Taille taille) {
		this.taille = taille;
	}

	public Modele getModele() {
		return modele;
	}

	public void setModele(Modele modele) {
		this.modele = modele;
	}

	public double getPrix() {
		return prix;
	}

	public void setPrix(double prix) {
		this.prix = prix;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (id ^ (id >>> 32));
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
		ProduitFini other = (ProduitFini) obj;
		if (id != other.id)
			return false;
		return true;
	}

}
