package com.dojosandninjas.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DojoController {
	// Autowire things here, eventually
	
	// Remember, this is the GET request, which renders the page.
	// This will NOT create a new Dojo.
	@GetMapping("/dojo/create")
	public String newDojo() {
		return "newDojo.jsp";
	}
	
	// You can use a POST request here. 
	// This will actually create the new Dojo after validation.
	// It can have the same route name, because it is a completely different request type.
	
	// This will take you to view all Dojos
	@GetMapping("/dojo/all")
	public String allDojos() {
		return "allDojos.jsp";
	}

}
