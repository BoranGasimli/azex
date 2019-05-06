package az.itcity.azex.service;

import az.itcity.azex.domain.Person;

import java.util.List;
import java.util.Optional;

public interface PersonService {
    List<Person> getPersonList();
    Optional<Person> getPersonById(long id);
    Person add(Person person);
    Person update(Person person);
    Person delete(Person person);

}
