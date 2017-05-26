package cl.injcristianrojas.spring.web.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cl.injcristianrojas.spring.data.model.Message;
import cl.injcristianrojas.spring.data.service.MessageService;

@Controller
public class MessageController {
	
	@Resource(name = "MessageService")
	private MessageService messageService;
	
	@RequestMapping(value = "/messages", method = RequestMethod.GET)
	public String getAllMessages(Model model) {
		model.addAttribute("messagesList", messageService.getAllMessages());
		return "messages";
	}
	
	@RequestMapping(value = "/messages", method = RequestMethod.POST)
	public String insertMessage(@RequestParam("text") String text, Model model) {
		Message message = new Message();
		message.setText(text);
		messageService.insertMessage(message);
		return "redirect:/messages";
	}

}
