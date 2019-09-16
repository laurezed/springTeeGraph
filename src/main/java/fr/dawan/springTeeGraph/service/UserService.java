package fr.dawan.springTeeGraph.service;

import java.util.List;

import javax.transaction.Transactional;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import fr.dawan.springTeeGraph.dao.GenericDao;
import fr.dawan.springTeeGraph.entites.Utilisateur;

/*
 * Nouvelle couche Service qui permet :
 * 		- de protéger la couche DAO et donc la BDD des attaques externes
 * 		- faire le lien entre la couche métier et la couche DAO
 * 				=> augmente la modularité du projet
 * 		- facilite aussi la maintenance et l'évolution du projet
 * 		Si dans une servlet on appelle 50 fois une méthode dao, si on modifie la méthode dao
 * 	il faudra changer les appels 50 fois dans la servlet. Pour faciliter la maintenance on utilise maintenant
 * une couche service qui s'occupe des appels dao, et donc si les dao sont modifiés il y aura juste à changer 
 * un appel dans la couche service
 * 
 * 
 * C'est dans cette couche qu'on va appliquer des traitements spécifiques à l'objet user propre à notre projet
 * et qu'on va gérer les transactions vers la BDD.
 * 
 */
@Service
public class UserService {
	
	@Autowired // avec cette annotation plus besoin d'initialiser l'objet (plus besoin de userDao= new UserDao();)
	private GenericDao genericDao;
	
	// Annotation TRES IMPORTANTE
	@Transactional //  Annotation qui permet de gérer les flux de connexions (ouverture, fermeture et rollback en cas d'erreur sur la requête)
	public void create(Utilisateur user)throws Exception {
		// Si modification à faire sur le user les faire ici SURTOUT avant l'appel du dao
		try {
			genericDao.saveOrUpdate(user, 0, true);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	
	@Transactional
	public List<Utilisateur> findAll() throws Exception {
		Utilisateur user = new Utilisateur();
		try {
			return genericDao.findAll(user.getClass().getName(), true);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

	}

	@Transactional
	public Utilisateur findById(long id) throws Exception {
		try {
			return genericDao.findById(Utilisateur.class, id, true);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	
	@Transactional
	public Utilisateur findByString(String email) throws Exception {
		try {
			return genericDao.findByString(Utilisateur.class, "email", email, true);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	
	@Transactional
	public void delete(long id) throws Exception {
		Utilisateur u = findById(id);
		try {
			genericDao.remove(u.getClass().getName(), id, true);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	
	@Transactional
	public void update(Utilisateur utilisateur) throws Exception {
		long id;
		
		try {
			genericDao.saveOrUpdate(utilisateur,utilisateur.getId(),true);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	
	@Transactional
	public List<Utilisateur> findPartial(int start, int nbElts) throws Exception{
		Utilisateur user = new Utilisateur();
		try {
			return genericDao.findPartial(user.getClass().getName(),start, nbElts, true);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	
	@Transactional
	public long count(Utilisateur utilisateur) throws Exception {
		Utilisateur user = new Utilisateur();
		EntityManager em;
		return genericDao.countElements(user.getClass().getName(), true);
	}
	
	
}
