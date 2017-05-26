package cl.injcristianrojas.spring.data.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.injcristianrojas.spring.data.dao.MessageDAO;
import cl.injcristianrojas.spring.data.model.Message;
import cl.injcristianrojas.spring.data.service.MessageService;

@Service("MessageService")
public class MessageServiceImpl implements MessageService {
	
	@Autowired
	private MessageDAO messageDAO;

	@Override
	public void insertMessage(Message message) {
		messageDAO.insertMessage(message);
	}

	@Override
	public List<Message> getAllMessages() {
		return messageDAO.getAllMessages();
	}

}
