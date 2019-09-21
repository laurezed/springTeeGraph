package fr.dawan.springTeeGraph.entites;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Version;

@Entity
@Table(name="t_commandePanier")
public class CommandePanier implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@Version
	private int version;
	
	@Column(nullable = false)
	private double prixTotal;
	
	//Utilisateur OneToOne
	@OneToOne
	private Utilisateur utilisateur;
	
	//LigneDeCommande OneToMany
	@OneToMany
	private List<LigneCommande> ligneCommande;
	
	public CommandePanier() {
		super();
	}


	public CommandePanier(long id, int version, double prixTotal) {
		super();
		this.id = id;
		this.version = version;
		this.prixTotal = prixTotal;
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


	public double getPrixTotal() {
		return prixTotal;
	}


	public void setPrixTotal(double prixTotal) {
		this.prixTotal = prixTotal;
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
		CommandePanier other = (CommandePanier) obj;
		if (id != other.id)
			return false;
		return true;
	}
	
	

}
