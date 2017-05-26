package cl.injcristianrojas.spring.data.dao;

import java.util.List;

import cl.injcristianrojas.spring.data.model.Person;

public interface PersonDAO {

	public void insertPerson(Person person);
	public List<Person> getAllPersons();
	public List<Person> getPersonsOfType(String type);

}
