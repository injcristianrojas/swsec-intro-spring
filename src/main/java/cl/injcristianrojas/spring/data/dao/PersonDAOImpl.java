package cl.injcristianrojas.spring.data.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cl.injcristianrojas.spring.data.model.Person;

@SuppressWarnings("unchecked")
@Repository
public class PersonDAOImpl implements PersonDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Person> getAllPersons() {
		Session session = sessionFactory.openSession();
		String hql = "from Person";
		Query query = session.createQuery(hql);
		return query.list();
	}

	@Override
	public void insertPerson(Person person) {
		Session session = sessionFactory.openSession();
		session.save(person);
	}

	@Override
	public List<Person> getPersonsOfType(String type) {
		Session session = sessionFactory.openSession();
		String hql = "from Person p where p.type = '" + type + "'";
		Query query = session.createQuery(hql);
		return query.list();
	}

	

}
