package fr.dawan.springTeeGraph.service;



import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.dawan.springTeeGraph.dao.SerigraphieDao;
import fr.dawan.springTeeGraph.entites.Serigraphie;


@Service
public class ProductService {

	
	@Autowired
	private SerigraphieDao serigraphiedao;
	
	@Transactional
	public List<Serigraphie> findAll(){
		return serigraphiedao.readAll();
	}
}
