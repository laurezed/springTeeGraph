package fr.dawan.springTeeGraph.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import fr.dawan.springTeeGraph.entites.Serigraphie;

@Repository
public class SerigraphieDao {
	@PersistenceContext // Permet à Spring d'injecter l'entity manager avec les infos de connexion de la base de données
	private EntityManager em;
	
	
	@SuppressWarnings("unchecked")
	public List<Serigraphie> readAll() {
		try  {
			return em.createQuery("From Serigraphie").getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	

}
	
