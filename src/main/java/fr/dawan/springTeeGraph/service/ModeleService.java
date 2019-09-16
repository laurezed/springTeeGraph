package fr.dawan.springTeeGraph.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.dawan.springTeeGraph.dao.GenericDao;
import fr.dawan.springTeeGraph.dao.ModeleDao;
import fr.dawan.springTeeGraph.entites.Modele;
import fr.dawan.springTeeGraph.entites.Serigraphie;

@Service
public class ModeleService {

//	@Autowired
//	private static GenericDao genericDao;

	public List<Modele> findAll() throws Exception {
		Modele modele = new Modele();
		ModeleDao modeleDao = new ModeleDao();
		try {
			List<Modele> modeles = modeleDao.findAll();
			System.out.println(modeles);
			return modeles;
		} catch (NullPointerException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw e;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw e;
		} finally {
			modeleDao = null;
		}
	}

	public Modele findByName(String name) throws Exception {
		GenericDao genericDao = new GenericDao();
		try {
			return genericDao.findByString(Modele.class, "designation", name, true);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

//	public GenericDao getGenericDao() {
//		return genericDao;
//	}
//
//	public void setGenericDao(GenericDao genericDao) {
//		this.genericDao = genericDao;
//	}

}
