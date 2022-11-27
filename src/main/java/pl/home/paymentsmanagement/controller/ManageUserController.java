package pl.home.paymentsmanagement.controller;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;
import pl.home.paymentsmanagement.model.Person;
import pl.home.paymentsmanagement.service.PersonService;

import java.util.List;

@Controller
@AllArgsConstructor
public class ManageUserController {

    private final PersonService personService;


    @GetMapping("/manage/users/{id}")
    public String getUser(@PathVariable("id") Long id, Model model) {
        Person person = personService.getPerson(id);
        model.addAttribute("person", person);
        return ("management/editUser");

    }
    @PostMapping("/manage/users/save/{id}")
    public RedirectView saveUser(Person person, @PathVariable("id") Long id) {
        personService.editPerson(person);
        return new RedirectView("/manage/users");
    }

}
