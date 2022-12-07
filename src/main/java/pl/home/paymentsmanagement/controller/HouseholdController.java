package pl.home.paymentsmanagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;
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

    @GetMapping  ("/add-household")
    public String getAddHousehold(Model model){
        List<Person> people = personService.getPersons();
        model.addAttribute("people", people);

        return "management/add-household";
    }


    @GetMapping("/households")
    public String getHouseholdList(Model model){
        List<Household> householdList = householdService.getHouseholdList();
        model.addAttribute("household", householdList);
        return "management/household-list";
    }

    @PostMapping ("/add-household")
    public String postAddHousehold( Household household){
        householdService.addHousehold(household);
        return "management/add-household";
    }



    @GetMapping ("/edit-household/{id}")
    public String getEditHousehold(@PathVariable("id") Long id, Model model){
        List<Person> people = personService.getPersonByHouseholdId(id);

//        Alternatywna wersja rozwiązania jednak bardziej pamięciożerna
//        List<Person> filtrPeople = people.stream().
//                filter((Person person)->{
//                    return person.getHouseholds().stream()
//                             .anyMatch(hId->hId.getId().equals(id));
//
//                }).collect(Collectors.toList());

        model.addAttribute("people", people);
        Household household = householdService.getHousehold(id);
        model.addAttribute("household", household);
        return "management/edit-household";
    }

    @PostMapping ("/edit-household/{id}")
    public RedirectView postEditHousehold(@PathVariable("id") Long id, Household editHousehold){
        householdService.addHousehold(editHousehold);
        return new RedirectView("/households");
    }

    @GetMapping("/deleteHousehold/{id}")
    public RedirectView deleteHousehold(@PathVariable("id") Long id){
        householdService.deleteHousehold(id);
        return new RedirectView("/households");
    }
}
