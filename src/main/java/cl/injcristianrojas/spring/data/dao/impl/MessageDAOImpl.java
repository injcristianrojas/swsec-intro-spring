package cl.injcristianrojas.spring.data.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cl.injcristianrojas.spring.data.dao.MessageDAO;
import cl.injcristianrojas.spring.data.model.Message;

@SuppressWarnings("unchecked")
@Repository
public class MessageDAOImpl implements MessageDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void insertMessage(Message message) {
		Session session = sessionFactory.openSession();
		session.save(message);
	}

	@Override
	public List<Message> getAllMessages() {
		Session session = sessionFactory.openSession();
		String hql = "from Message";
		Query query = session.createQuery(hql);
		return query.list();
	}

}
