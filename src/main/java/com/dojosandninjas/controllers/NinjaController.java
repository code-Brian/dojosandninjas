package com.dojosandninjas.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.dojosandninjas.models.Ninja;
import com.dojosandninjas.services.DojoService;
import com.dojosandninjas.services.NinjaService;

@Controller
public class NinjaController {
	@Autowired
	NinjaService ninjaServ;
	
	@Autowired
	DojoService dojoServ;
	
	// Renders page with create ninja form
	@GetMapping("/ninja/create")
	public String newNinja(@ModelAttribute("ninja") Ninja ninja, Model model) {
		model.addAttribute("allDojos", dojoServ.getAll());
		return "newNinja.jsp";
	}
	
	// Sends form data to DB if valid
	@PostMapping("/ninja/create")
	public String create(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result, Model model) {
		if(result.hasErrors()) {
			model.addAttribute("allDojos", dojoServ.getAll());
			return "newNinja.jsp";
		} else {
			ninjaServ.create(ninja);
			return "redirect:/";
		}
	}

}
