package pl.home.paymentsmanagement.service;

import org.springframework.stereotype.Service;
import pl.home.paymentsmanagement.model.Charger;
import pl.home.paymentsmanagement.model.Person;
import pl.home.paymentsmanagement.model.PersonType;
import pl.home.paymentsmanagement.repository.ChargerRepository;
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

    public List<Person> getPersonByHouseholdId(Long id){
        return personRepository.findAllPersonsHouseholds(id);
    }


    public Person getPerson(Long id) {
        return personRepository.findById(id).orElse(null);
    }

    public void editPerson(Person person) {
        personRepository.save(person);
    }

    public void addPerson(Person person) {
        personRepository.save(person);
    }

    public void deletePerson(Long id) {
        personRepository.deleteById(id);
    }
}

