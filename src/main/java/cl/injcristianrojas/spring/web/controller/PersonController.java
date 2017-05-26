package cl.injcristianrojas.spring.web.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import cl.injcristianrojas.spring.data.service.PersonService;

@Controller
public class PersonController {
	
	@Resource(name = "PersonService")
	private PersonService personService;
	
	@RequestMapping(value = "/persons")
	public String getAllPersons(Model model) {
		model.addAttribute("personsList", personService.getAllPersons());
		return "persons";
	}
	
	@RequestMapping(value = "/persons/{type}")
	public String getAllPersonsWithType(@PathVariable("type") String type, Model model) {
		model.addAttribute("personsList", personService.getPersonsOfType(type));
		return "persons";
	}
	
}
