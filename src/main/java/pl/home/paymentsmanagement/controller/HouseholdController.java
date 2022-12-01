package pl.home.paymentsmanagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import pl.home.paymentsmanagement.model.Household;
import pl.home.paymentsmanagement.model.Person;
import pl.home.paymentsmanagement.service.HouseholdService;
import pl.home.paymentsmanagement.service.PersonService;

import java.util.List;
import java.util.stream.Collectors;

@Controller
public class HouseholdController {

    private final HouseholdService householdService;
    private final PersonService personService;

    public HouseholdController(HouseholdService householdService, PersonService personService) {
        this.householdService = householdService;
        this.personService = personService;
    }

    @GetMapping("/add-household")
    public String getAddHousehold(Model model){
        List<Person> people = personService.getPersons();
        model.addAttribute("people", people);

        return "management/add-household";
    }

    @GetMapping("/edit-household/{id}")
    public String getEditHousehold(@PathVariable("id") Long id, Model model){
        List<Person> people = personService.getPersons();
        List<Person> fileterPeopel = people.stream().
                filter((Person perosn)->{
                    return perosn.getHouseholds().equals(id);
                }).collect(Collectors.toList());
        model.addAttribute("people", fileterPeopel);
        Household household = householdService.getHousehold(id);
        model.addAttribute("household", household);
        return "management/edit-household";
    }
}
