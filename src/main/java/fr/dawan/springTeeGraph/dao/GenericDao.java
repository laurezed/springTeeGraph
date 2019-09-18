package fr.dawan.springTeeGraph.dao;

import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

/**
 * Classe utilitaire permettant d'offrir des méthodes génériques pour réaliser
 * des requêtes de base
 * 
 * @author Mohamed
 *
 */
@Repository
@Transactional
public class GenericDao {

	@PersistenceContext // Permet à Spring d'injecter l'entity manager avec les infos de connexion de la
						// base de données
	private EntityManager em;

	/**
	 * Sauvegarde ou modification d'un objet
	 * 
	 * @param <T>      le type d'objet à gérer
	 * @param entity   l'objet à insérer ou modifier
	 * @param id       la clé primaire
	 * @param closeCnx fermeture de la connexion
	 * @throws Exception si erreur
	 */
	public <T> void saveOrUpdate(T entity, long id, boolean closeCnx) throws Exception {
//		EntityTransaction tx = em.getTransaction();
//		try {
//			tx.begin();
		if (id == 0)
			em.persist(entity);
		else
			em.merge(entity);

//			tx.commit();
//		} catch (Exception e) {
//			tx.rollback();
//			throw e;
//		} finally {
		if (closeCnx)
			em.close();
//		}

	}

	/**
	 * Chercher un élément par rapport à son id
	 * 
	 * @param <T>         le type générique
	 * @param entityClass le type d'objet
	 * @param id          l'identifiant
	 * @param em          connexion
	 * @param closeCnx    fermeture de la connexion ?
	 * @return l'objet trouvé ou null
	 * @throws Exception si erreur
	 */
	public <T> T findById(Class<T> entityClass, Object id, boolean closeCnx) throws Exception {
//		EntityTransaction tx = em.getTransaction();

		T obj = null;
		try {
//			tx.begin();
			obj = em.find(entityClass, id);
//			tx.commit();
		} catch (Exception e) {
//			tx.rollback();
			throw e;
		} finally {
			if (closeCnx)
				em.close();
		}
		return obj;
	}

	/**
	 * 
	 * @param <T>
	 * @param entityClass
	 * @param valeur
	 * @param champ
	 * @param closeCnx
	 * @return
	 * @throws Exception
	 */
	public <T> T findByString(Class<T> entityClass, Object champ, String valeur, boolean closeCnx) throws Exception {
//		EntityTransaction tx = em.getTransaction();
//
		T obj = null;
//		try {
//			tx.begin();
		// on peut recuperer un element d'une table quelconque a partir d'un champ
		// quelconque
		// a partir de cette methode onp eut par exemple:
		// recuperer une serigraphie par rapport a son nom
		// recuperer un user par son password
		// ou un produit fini par sa couleur...
		// "From :entityClass WHERE :champ= :valeur" signifie: dans la table Utilisateur
		// quand le champ email = donner la valeur du mail (@)
		obj = (T) em.createQuery("FROM " + entityClass.getName() + " WHERE " + champ + "= :valeur")
				.setParameter("valeur", valeur).getSingleResult();
		// tx.commit = valide la transaction:

		// SELECT u FROM fr.dawan.springTeeGraph.Utilisateur WHERE u.email =
		// 'coco@gmail.com'
//			tx.commit();
//		} catch (Exception e) {
//			tx.rollback();
//			throw e;
//		} finally {
		if (closeCnx)
			em.close();
//		}
		return obj;
	}

	/**
	 * Lister l'ensemble des lignes d'une table
	 * 
	 * @param <T>             le type
	 * @param entityClassName le nom de la classe de l'objet
	 * @param em              connexion
	 * @param closeCnx        fermeture de la connexion ?
	 * @return la liste des objets
	 * @throws Exception si erreur
	 */
	@SuppressWarnings("unchecked")
	public <T> List<T> findAll(String entityClassName, boolean closeCnx) throws Exception {
//		EntityTransaction tx = em.getTransaction();
		List<T> myList = null;
		try {
//			tx.begin();
			myList = em.createQuery("FROM " + entityClassName).getResultList();
//			tx.commit();
		} catch (Exception e) {
//			tx.rollback();
			System.out.println("GenericDao.findAll: " + e.getMessage());
			throw e;
		} finally {
			if (closeCnx)
				em.close();
		}
		return myList;
	}

	/**
	 * Récupération partielle du contenu d'une table (peut servir pour la pagination
	 * de résultats
	 * 
	 * @param <T>             le type générique
	 * @param entityClassName le nom de la Classe
	 * @param start           indice de début
	 * @param nbElts          nombre de lignes à récupérer
	 * @param em              connexion
	 * @param closeCnx        fermeture de la connexion
	 * @return liste des résultats
	 * @throws Exception si erreur
	 */
	@SuppressWarnings("unchecked")
	public <T> List<T> findPartial(String entityClassName, int start, int nbElts, boolean closeCnx) throws Exception {
//		EntityTransaction tx = em.getTransaction();
		List<T> myList = null;
		try {
//			tx.begin();
			myList = em.createQuery("FROM " + entityClassName).setFirstResult(start).setMaxResults(nbElts)
					.getResultList();
//			tx.commit();
		} catch (Exception e) {
//			tx.rollback();
			throw e;
		} finally {
			if (closeCnx)
				em.close();
		}
		return myList;
	}

	/**
	 * Suppression d'un élément par son id
	 * 
	 * @param <T>             le type générique
	 * @param entityClassName le nom de la Classe
	 * @param id              identifiant (clé primaire)
	 * @param em              connexion
	 * @param closeCnx        fermeture de la connexion ?
	 * @throws Exception si erreur
	 */
	public <T> int remove(String entityClassName, Object id, boolean closeCnx) throws Exception {
//		EntityTransaction tx = em.getTransaction();
		int res = 0;
		try {
//			tx.begin();
			res = em.createQuery("DELETE FROM " + entityClassName + " WHERE id=:id").setParameter("id", id)
					.executeUpdate();

//			tx.commit();
		} catch (Exception e) {
//			tx.rollback();
			throw e;
		} finally {

			if (closeCnx)
				em.close();
		}
		return res;
	}

	/**
	 * Récupérer une liste d'objets en fonction de critères
	 * 
	 * @param <T>        le type générique
	 * @param hqlQuery   requête à exécuter
	 * @param parameters paramètres de la requête
	 * @param em         connexion
	 * @param closeCnx   fermeture de la connexion
	 * @return liste des résultats
	 * @throws Exception si erreur
	 */
	@SuppressWarnings("unchecked")
	public <T> List<T> findAll(String hqlQuery, Map<String, Object> parameters, boolean closeCnx) throws Exception {
//		EntityTransaction tx = em.getTransaction();
		List<T> myList = null;
		try {
//			tx.begin();
			Query q = em.createQuery(hqlQuery);
			for (Entry<String, Object> entry : parameters.entrySet()) {
				q.setParameter(entry.getKey(), entry.getValue());
			}
			myList = q.getResultList();
//			tx.commit();
		} catch (Exception e) {
//			tx.rollback();
			throw e;
		} finally {
			if (closeCnx)
				em.close();
		}
		return myList;
	}

	/**
	 * Compter le nombre d'enregistrements d'une table
	 * 
	 * @param entityName le nom de l'entité
	 * @param em         connexion
	 * @param closeCnx   fermeture de la connexion
	 * @return nb de lignes
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public long countElements(String entityName, boolean closeCnx) throws Exception {
//		EntityTransaction tx = em.getTransaction();
		long nb = 0;
		try {
//			tx.begin();
			nb = (Long) em.createQuery("SELECT COUNT(x) FROM " + entityName + " x").getSingleResult();
//			tx.commit();
		} catch (Exception e) {
//			tx.rollback();
			throw e;
		} finally {
			if (closeCnx)
				em.close();
		}
		return nb;
	}

	
}
