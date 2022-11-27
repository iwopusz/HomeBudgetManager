package pl.home.paymentsmanagement.service;

import org.springframework.stereotype.Service;
import pl.home.paymentsmanagement.model.Person;
import pl.home.paymentsmanagement.repository.PersonRepository;

import java.util.List;

@Service
public class PersonService {
    private final PersonRepository personRepository;

    public PersonService(PersonRepository personRepository) {
        this.personRepository = personRepository;
    }

    public List<Person> getPersons()  {
        return personRepository.findAll();
    }

    public Person getPerson(Long id) {
        return personRepository.findById(id).orElse(null);
    }
    public void editPerson(Person person) {
        personRepository.save(person);
    }
}
