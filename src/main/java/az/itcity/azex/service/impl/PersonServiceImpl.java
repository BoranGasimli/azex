package az.itcity.azex.service.impl;

import az.itcity.azex.domain.Person;
import az.itcity.azex.service.PersonService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class PersonServiceImpl implements PersonService {

    private List<Person> personList = new ArrayList<>();

    @Override
    public List<Person> getPersonList() {
        print();
        return personList;
    }

    @Override
    public Optional<Person> getPersonById(long id) {
        Optional<Person> optionalPerson = Optional.empty();

        optionalPerson = personList.stream()
                .filter(person -> person.getId() == id)
                .findFirst();
        print();

        return optionalPerson;
    }

    @Override
    public Person add(Person person) {
        person.setId(personList.size() + 1);
        personList.add(person);
        print();
        return person;
    }

    private void print() {
        System.out.println("person list = " + personList);
    }

    @Override
    public Person update(Person person) {

        Optional<Person> optionalPerson = getPersonById(person.getId());
        if(optionalPerson.isPresent()) {
            personList.set((int)(person.getId() - 1), person);
        }
        print();

        return person;
    }

    @Override
    public Person delete(Person person) {
        Optional<Person> optionalPerson = getPersonById(person.getId());
        if(optionalPerson.isPresent()) {
            personList.remove((int)(person.getId() - 1));
        }
        print();
        return person;
    }
}
