package cl.injcristianrojas.spring.data.service;

import java.util.List;

import cl.injcristianrojas.spring.data.model.Person;

public interface PersonService {
	public void createPerson(Person person);
	public List<Person> getAllPersons();
}
