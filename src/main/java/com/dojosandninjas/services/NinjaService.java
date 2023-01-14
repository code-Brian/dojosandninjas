package com.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dojosandninjas.models.Ninja;
import com.dojosandninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	@Autowired
	NinjaRepository ninjaRepo;
	
	public Ninja getOne(Long id) {
		Optional<Ninja> optNinja = ninjaRepo.findById(id);
		if(optNinja.isPresent()) {
			return optNinja.get();
		} else {
			return null;
		}
	}
	
	public List<Ninja> getAll(){
		return ninjaRepo.findAll();
	}
	
	public Ninja create(Ninja n) {
		return ninjaRepo.save(n);
	}
	
	public void delete(Long id) {
		ninjaRepo.deleteById(id);
	}
	
	public void deleteAll(List<Ninja> ninjas) {
		ninjaRepo.deleteAll(ninjas);
	}

}
