package com.dojosandninjas.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NinjaController {
	
	@GetMapping("/ninja/create")
	public String newNinja() {
		return "newNinja.jsp";
	}

}
