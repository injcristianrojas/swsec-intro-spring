package cl.injcristianrojas.spring.data.service;

import java.util.List;

import cl.injcristianrojas.spring.data.model.Message;

public interface MessageService {
	public void insertMessage(Message message);
	public List<Message> getAllMessages();
}
