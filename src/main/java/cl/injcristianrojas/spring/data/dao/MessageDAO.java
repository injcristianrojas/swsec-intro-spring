package cl.injcristianrojas.spring.data.dao;

import java.util.List;

import cl.injcristianrojas.spring.data.model.Message;

public interface MessageDAO {
	public void insertMessage(Message message);
	public List<Message> getAllMessages();

}
