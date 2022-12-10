package pl.home.paymentsmanagement.controller;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import pl.home.paymentsmanagement.model.Charger;
import pl.home.paymentsmanagement.model.Household;
import pl.home.paymentsmanagement.model.Person;
import pl.home.paymentsmanagement.model.Transaction;
import pl.home.paymentsmanagement.service.ChargerService;
import pl.home.paymentsmanagement.service.HistoryService;
import pl.home.paymentsmanagement.service.HouseholdService;
import pl.home.paymentsmanagement.service.PersonService;

import java.security.Principal;
import java.util.List;

@Controller
public class HistoryController {

    private final HistoryService historyService;
    private final HouseholdService householdService;
    private final PersonService personService;
    private final ChargerService chargerService;

    public HistoryController(HistoryService historyService, HouseholdService householdService, PersonService personService, ChargerService chargerService) {
        this.historyService = historyService;
        this.householdService = householdService;
        this.personService = personService;
        this.chargerService = chargerService;
    }

    @ModelAttribute("historyPage")
    public Page<Transaction> getHistory(@PageableDefault(size = 3) Pageable page, Principal principal) {
        return historyService.findAllOrderedByTransactionDate(principal.getName(), page);
    }

    @ModelAttribute("history")
    public List<Transaction> getHistoryList(@PageableDefault(size = 3) Pageable page, Principal principal) {
        return getHistory(page, principal).getContent();
    }

    @ModelAttribute("households")
    public List<Household> getHouseholdList() {
        return householdService.getHouseholdList();
    }

    @ModelAttribute("people")
    public List<Person> getPeople() {
        return personService.getPersons();
    }

    @ModelAttribute("chargers")
    public List<Charger> getChargers() {
        return chargerService.getChargers();
    }

    @GetMapping(value = {"/history", "/history/"})
    public String getHistory() {
        return "management/history";
    }

}
