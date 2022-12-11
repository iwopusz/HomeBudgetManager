package pl.home.paymentsmanagement.controller;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;
import pl.home.paymentsmanagement.model.Person;
import pl.home.paymentsmanagement.model.PersonType;
import pl.home.paymentsmanagement.service.PersonService;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Controller
@AllArgsConstructor
public class UserController {

    private final PersonService personService;


    @GetMapping("/persons")
    public String getPersonsList(Model model) {
        List<Person> personList = personService.getPersons();
        model.addAttribute("person", personList);
        return "management/persons-list";
    }

    @GetMapping("/addPerson")
    public String getAddPerson(Model model) {
        List<String> types = Stream.of(PersonType.values()).map(Enum::toString).toList();
//        List<String> persons = personService.getPersons().stream().map(x -> x.getPersonType()).distinct().collect(Collectors.toList());
        model.addAttribute("types", types);
        return "management/add-person";
    }

    @PostMapping("/addPerson")
    public RedirectView postAddPerson(Person person) {
        personService.addPerson(person);
        return new RedirectView("/persons");
    }

    @GetMapping("/editPerson/{id}")
    public String getEditPerson(@PathVariable("id") Long id, Model model) {
        Person person = personService.getPerson(id);
        model.addAttribute("person", person);
        return "management/edit-person";
    }

    @PostMapping("/editPerson/{id}")
    public RedirectView savePerson(Person person, @PathVariable("id") Long id) {
        personService.editPerson(person);
        return new RedirectView("/persons");
    }

    @PostMapping("/addPerson/{id}")
    public RedirectView postEditPerson(Person editPerson, @PathVariable("id") Long id) {
        personService.editPerson(editPerson);
        return new RedirectView("/persons");
    }

    @GetMapping("/deletePerson/{id}")
    public RedirectView deletePerson(@PathVariable("id") Long id) {
        personService.deletePerson(id);
        return new RedirectView("/persons");
    }
}