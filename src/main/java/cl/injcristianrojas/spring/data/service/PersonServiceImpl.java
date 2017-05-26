package cl.injcristianrojas.spring.data.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.injcristianrojas.spring.data.dao.PersonDAO;
import cl.injcristianrojas.spring.data.model.Person;

@Service("PersonService")
public class PersonServiceImpl implements PersonService {
	
	@Autowired
	private PersonDAO personDAO;

	@Override
	public void createPerson(Person person) {
		personDAO.insertPerson(person);
	}

	@Override
	public List<Person> getAllPersons() {
		return personDAO.getAllPersons();
	}

}
