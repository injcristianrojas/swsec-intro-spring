package cl.injcristianrojas.spring.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GreetingController {

	@RequestMapping(value = "/greeting")
	public String greeting (@ModelAttribute("name") String name, Model model) {
		model.addAttribute("name", name);
		return "greeting";
	}
	
}
