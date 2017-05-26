package cl.injcristianrojas.spring.web.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cl.injcristianrojas.spring.data.service.MessageService;

@Controller
public class MessageController {
	
	@Resource(name = "MessageService")
	private MessageService messageService;
	
	@RequestMapping(value = "/messages")
	public String getAllMessages(Model model) {
		model.addAttribute("messagesList", messageService.getAllMessages());
		return "messages";
	}
}
