package fr.dawan.springTeeGraph.entites;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="t_ligneCommande")
public class LigneCommande implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@Column(nullable = false)
	private int quantite;
	
	@Column(nullable = false)
	private double prixUht;
	
	@Column(nullable = false)
	private double prixTtc;
	
	//CommandePanier ManyToOne
	
	
	//ProduitFini OneToOne
	@OneToOne
	private ProduitFini produitFini;
	
	public LigneCommande() {
		super();
	}
	public LigneCommande(long id, int quantite, double prixUht, double prixTtc, ProduitFini produitFini) {
		super();
		this.id = id;
		this.quantite = quantite;
		this.prixUht = prixUht;
		this.prixTtc = prixTtc;
		this.produitFini = produitFini;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public int getQuantite() {
		return quantite;
	}
	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}
	public double getPrixUht() {
		return prixUht;
	}
	public void setPrixUht(double prixUht) {
		this.prixUht = prixUht;
	}
	public double getPrixTtc() {
		return prixTtc;
	}
	public void setPrixTtc(double prixTtc) {
		this.prixTtc = prixTtc;
	}
	
	public ProduitFini getProduitFini() {
		return produitFini;
	}
	public void setProduitFini(ProduitFini produitFini) {
		this.produitFini = produitFini;
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
		LigneCommande other = (LigneCommande) obj;
		if (id != other.id)
			return false;
		return true;
	}
	

}
