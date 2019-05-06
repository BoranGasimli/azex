package az.itcity.azex.controller;

import az.itcity.azex.domain.*;
import az.itcity.azex.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
public class PersonRestController {

    @Autowired
    private PersonService personService;

    @GetMapping("/person")
    public List<Person> getPersonList() {
        System.out.println("GET person list");
        return personService.getPersonList();
    }

    @GetMapping("/person/{id}")
    public Person getPerson(@PathVariable(name = "id") long id) {
        System.out.println("GET person by id " + id);
        Optional<Person> optionalPerson = personService.getPersonById(id);
        if(optionalPerson.isPresent()) {
            return optionalPerson.get();
        } else {
            // todo error 404
            return null;
        }
    }

    @PutMapping("/person")
    public Person addPerson(@RequestBody Person person) {
        System.out.println("PUT person " + person);
        Optional<Person> optionalPerson = personService.getPersonById(person.getId());
        if(optionalPerson.isPresent()) {
            person = personService.update(person);
        } else {
            person = personService.add(person);
        }
        return person;
    }

    @PostMapping("/person/{id}")
    public Person updatePerson(@PathVariable(name = "id") long id,
                               @RequestBody Person person) {
        System.out.println("POST person " + person);
        Optional<Person> optionalPerson = personService.getPersonById(id);
        if(optionalPerson.isPresent()) {
            person = personService.update(person);
        }

        return person;
    }

    @DeleteMapping("person/{id}")
    public Person deletePerson(@PathVariable(name = "id") long id) {
        System.out.println("DELETE person id = " + id);
        Person person = new Person();
        person.setId(id);
        person = personService.delete(person);
        return person;
    }

}
