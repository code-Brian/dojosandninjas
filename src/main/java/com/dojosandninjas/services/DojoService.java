package com.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dojosandninjas.models.Dojo;
import com.dojosandninjas.repositories.DojoRepository;

@Service
public class DojoService {
	@Autowired
	private DojoRepository dojoRepo;
	
	public Dojo getOne(Long id) {
		Optional<Dojo> optDojo = dojoRepo.findById(id);
		if(optDojo.isPresent()) {
			return optDojo.get();
		} else {
			return null;
		}
	}
	
	public List<Dojo> getAll(){
		return dojoRepo.findAll();
	}
	
	public Dojo create(Dojo d) {
		return dojoRepo.save(d);
	}
	
	public void delete(Long id) {
		dojoRepo.deleteById(id);
	}
}
