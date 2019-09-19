package fr.dawan.springTeeGraph.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import fr.dawan.springTeeGraph.entites.Modele;

@Repository
public class ModeleDao {

	@PersistenceContext // Permet à Spring d'injecter l'entity manager avec les infos de connexion de la
						// base de données
	private EntityManager em;

	@SuppressWarnings("unchecked")
	@Transactional
	public List<Modele> findAll() throws Exception {
//		EntityTransaction tx = em.getTransaction();
		List<Modele> myList = null;
		try {
//			tx.begin();
			myList = em.createQuery("FROM Modele").getResultList();
//			tx.commit();
		} catch (Exception e) {
//			tx.rollback();
			System.out.println("ModeleDao.findAll: " + e.getMessage());
			throw e;
		} finally {
			em.close();
		}
		return myList;
	}

}
