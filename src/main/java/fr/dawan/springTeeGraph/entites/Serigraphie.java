package fr.dawan.springTeeGraph.entites;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Version;

@Entity
@Table(name = "t_serigraphie")
public class Serigraphie implements Serializable {

	private static final long serialVersionUID = 1L;

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
	private String photo;

	@Column
	private String modeleTHomme;

	@Column
	private String modeleTFemme;

	@Column
	private String modelePull;

	@Column
	private String modeleSweat;

	@Column(nullable = false)
	private Boolean bestSeller;

	// DernierChance ManyToOne
	@ManyToOne
	private DerniereChance derniereChance;

	@OneToMany
	private List<ProduitFini> produitFini;

	private static int counter;

	public Serigraphie() {
		super();
		counter++;
	}

	public Serigraphie(long id, int version, String referenceProduit, String designation, String photo,
			Boolean bestSeller) {
		super();
		this.id = id;
		this.version = version;
		this.referenceProduit = referenceProduit;
		this.designation = designation;
		this.photo = photo;
		this.bestSeller = bestSeller;
		counter++;
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

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public Boolean getBestSeller() {
		return bestSeller;
	}

	public void setBestSeller(Boolean bestSeller) {
		this.bestSeller = bestSeller;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
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
		Serigraphie other = (Serigraphie) obj;
		if (id != other.id)
			return false;
		return true;
	}

	public static int comptage() {
		return counter;
	}

}
