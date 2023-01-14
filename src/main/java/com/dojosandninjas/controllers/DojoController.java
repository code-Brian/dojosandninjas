package com.dojosandninjas.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.dojosandninjas.models.Dojo;
import com.dojosandninjas.services.DojoService;
import com.dojosandninjas.services.NinjaService;

@Controller
public class DojoController {
	// Autowire things here, eventually
	@Autowired
	DojoService dojoServ;
	
	@Autowired
	NinjaService ninjaServ;
	
	// Remember, this is the GET request, which renders the page.
	// This will NOT create a new Dojo.
	@GetMapping("/dojo/create")
	public String newDojo(@ModelAttribute("dojo") Dojo dojo) {
		return "newDojo.jsp";
	}
	
	// You can use a POST request here. 
	// This will actually create the new Dojo after validation.
	// It can have the same route name, because it is a completely different request type.
	@PostMapping("/dojo/create")
	public String create(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result) {
		if(result.hasErrors()) {
			return "newDojo.jsp";
		} else {
			dojoServ.create(dojo);
			return "redirect:/";
		}
	}
	
	// This will return one dojo with the matching id
	@GetMapping("/dojo/{id}/view")
	public String findOne(@PathVariable("id") Long id, Model model) {
		System.out.println("Dojo " + id + " selected.");
		model.addAttribute("allNinjas",ninjaServ.getAll());
		model.addAttribute("dojo", dojoServ.getOne(id));
		return "oneDojo.jsp";
	}
	
	// This will take you to view all Dojos
	@GetMapping("/dojo/all")
	public String allDojos(Model model) {
		model.addAttribute("allDojos",dojoServ.getAll());
		return "allDojos.jsp";
	}
	
	@DeleteMapping("/dojo/{id}")
	public String delete(@PathVariable("id") Long id) {
		dojoServ.delete(id);
		return "redirect:/dojo/all";
	}

}
