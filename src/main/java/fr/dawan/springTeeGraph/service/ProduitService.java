package fr.dawan.springTeeGraph.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.dawan.springTeeGraph.dao.GenericDao;
import fr.dawan.springTeeGraph.dao.SerigraphieDao;
import fr.dawan.springTeeGraph.entites.LigneCommande;
import fr.dawan.springTeeGraph.entites.ProduitFini;
import fr.dawan.springTeeGraph.entites.Serigraphie;

@Service
public class ProduitService {

	@Autowired
	private GenericDao genericDao;

	@Transactional
	public List<Serigraphie> findAll() throws Exception {
		Serigraphie seri = new Serigraphie();
		try {
			return genericDao.findAll(seri.getClass().getName(), true);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("ProduitService.findAll: " + e.getMessage());
			throw e;
		}
	}

	public Serigraphie findByName(String name) throws Exception {
		try {
			return genericDao.findByString(Serigraphie.class, "designation", name, true);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("ProduitService.findByName: " + e.getMessage());
			throw e;
		}
	}
	
	@Transactional
	public LigneCommande create(LigneCommande ligneCommande, long id, boolean closeCnx) throws Exception{
		try {
			genericDao.saveOrUpdate(ligneCommande, 0, true);
			return ligneCommande;
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}
	
	@Transactional
	public ProduitFini create(ProduitFini produitFini, long id, boolean closeCnx) throws Exception{
		try {
			genericDao.saveOrUpdate(produitFini, 0, true);
			return produitFini;
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	public GenericDao getGenericDao() {
		return genericDao;
	}

	public void setGenericDao(GenericDao genericDao) {
		this.genericDao = genericDao;
	}
	
}
