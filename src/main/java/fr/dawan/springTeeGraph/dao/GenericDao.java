package fr.dawan.springTeeGraph.dao;

import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

/**
 * Classe utilitaire permettant d'offrir des méthodes
 * génériques pour réaliser des requêtes de base
 * @author Mohamed
 *
 */
public class GenericDao {

	/**
	 * Sauvegarde ou modification d'un objet
	 * @param <T>	le type d'objet à gérer
	 * @param entity	l'objet à insérer ou modifier	
	 * @param id		la clé primaire
	 * @param em		connexion
	 * @param closeCnx	fermeture de la connexion
	 * @throws Exception	si erreur
	 */
	public static <T> void saveOrUpdate(T entity, long id, EntityManager em, boolean closeCnx) throws Exception {
		EntityTransaction tx = em.getTransaction();
		try {
			tx.begin();
			if (id == 0)
				em.persist(entity);
			else
				em.merge(entity);

			tx.commit();
		} catch (Exception e) {
			tx.rollback();
			throw e;
		} finally {
			if (closeCnx)
				em.close();
		}

	}

	/**
	 * Chercher un élément par rapport à son id
	 * @param <T>			le type générique
	 * @param entityClass	le type d'objet
	 * @param id			l'identifiant
	 * @param em			connexion
	 * @param closeCnx		fermeture de la connexion ?
	 * @return				l'objet trouvé ou null
	 * @throws Exception	si erreur
	 */
	public static <T> T findById(Class<T> entityClass, Object id, EntityManager em, boolean closeCnx) throws Exception {
		EntityTransaction tx = em.getTransaction();

		T obj = null;
		try {
			tx.begin();
			obj = em.find(entityClass, id);
			tx.commit();
		} catch (Exception e) {
			throw e;
		} finally {
			if (closeCnx)
				em.close();
		}
		return obj;
	}

	/**
	 * Lister l'ensemble des lignes d'une table
	 * @param <T>				le type
	 * @param entityClassName	le nom de la classe de l'objet
	 * @param em				connexion	
	 * @param closeCnx			fermeture de la connexion ?
	 * @return					la liste des objets
	 * @throws Exception		si erreur
	 */
	@SuppressWarnings("unchecked")
	public static <T> List<T> findAll(String entityClassName, EntityManager em, boolean closeCnx) throws Exception {
		EntityTransaction tx = em.getTransaction();
		List<T> myList = null;
		try {
			tx.begin();
			myList = em.createQuery("FROM " + entityClassName).getResultList();
			tx.commit();
		} catch (Exception e) {
			throw e;
		} finally {
			if (closeCnx)
				em.close();
		}
		return myList;
	}

	/**
	 * Récupération partielle du contenu d'une table
	 * (peut servir pour la pagination de résultats
	 * @param <T>				le type générique
	 * @param entityClassName	le nom de la Classe
	 * @param start				indice de début
	 * @param nbElts			nombre de lignes à récupérer
	 * @param em				connexion
	 * @param closeCnx			fermeture de la connexion
	 * @return					liste des résultats
	 * @throws Exception		si erreur
	 */
	@SuppressWarnings("unchecked")
	public static <T> List<T> findPartial(String entityClassName, int start, int nbElts, EntityManager em,
			boolean closeCnx) throws Exception {
		EntityTransaction tx = em.getTransaction();
		List<T> myList = null;
		try {
			tx.begin();
			myList = em.createQuery("FROM " + entityClassName)
						.setFirstResult(start)
						.setMaxResults(nbElts)
						.getResultList();
			tx.commit();
		} catch (Exception e) {
			throw e;
		} finally {
			if (closeCnx)
				em.close();
		}
		return myList;
	}

	/**
	 * Suppression d'un élément par son id
	 * @param <T>			le type générique
	 * @param entityClassName	le nom de la Classe
	 * @param id			identifiant (clé primaire)
	 * @param em			connexion
	 * @param closeCnx		fermeture de la connexion ?
	 * @throws Exception	si erreur
	 */
	public static <T> int remove(String entityClassName, Object id, EntityManager em, boolean closeCnx)
			throws Exception {
		EntityTransaction tx = em.getTransaction();
		int res = 0;
		try {
			tx.begin();
			res = em.createQuery("DELETE FROM "+entityClassName + " WHERE id=:id")
				.setParameter("id", id)
				.executeUpdate();
			
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
			throw e;
		} finally {

			if (closeCnx)
				em.close();
		}
		return res;
	}

	/**
	 * Récupérer une liste d'objets en fonction de critères
	 * @param <T>			le type générique
	 * @param hqlQuery		requête à exécuter
	 * @param parameters	paramètres de la requête
	 * @param em			connexion	
	 * @param closeCnx		fermeture de la connexion
	 * @return				liste des résultats
	 * @throws Exception	si erreur
	 */
	@SuppressWarnings("unchecked")
	public static <T> List<T> findAll(String hqlQuery, Map<String, Object> parameters, EntityManager em,
			boolean closeCnx) throws Exception {
		EntityTransaction tx = em.getTransaction();
		List<T> myList = null;
		try {
			tx.begin();
			Query q = em.createQuery(hqlQuery);
			for (Entry<String, Object> entry : parameters.entrySet()) {
				q.setParameter(entry.getKey(), entry.getValue());
			}
			myList = q.getResultList();
			tx.commit();
		} catch (Exception e) {
			throw e;
		} finally {
			if (closeCnx)
				em.close();
		}
		return myList;
	}

	/**
	 * Compter le nombre d'enregistrements d'une table
	 * @param entityName	le nom de l'entité
	 * @param em			connexion
	 * @param closeCnx		fermeture de la connexion
	 * @return				nb de lignes
	 * @throws Exception 
	 */
	@SuppressWarnings("unchecked")
	public static long countElements(String entityName, EntityManager em, boolean closeCnx) throws Exception {
		EntityTransaction tx = em.getTransaction();
		long nb = 0;
		try {
			tx.begin();
			nb = (Long) em.createQuery("SELECT COUNT(x) FROM " + entityName + " x").getSingleResult();
			tx.commit();
		} catch (Exception e) {
			throw e;
		} finally {
			if (closeCnx)
				em.close();
		}
		return nb;
	}
}
