package cl.injcristianrojas.spring.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cl.injcristianrojas.spring.data.service.PersonService;

@Controller
public class PersonController {
	
	private PersonService personService;
	
	@RequestMapping(value = "/persons")
	public String listPersons(Model model) {
		model.addAttribute("personsList", personService.getAllPersons());
		return "persons";
	}
	
}
