package pl.home.paymentsmanagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;
import pl.home.paymentsmanagement.model.*;
import pl.home.paymentsmanagement.service.*;

import java.util.List;

@Controller
public class TransactionController {

    private final TransactionService transactionService;
    private final HouseholdService householdService;
    private final PersonService personService;
    private final ChargerService chargerService;
    private final TransactionCategoryService transactionCategoryService;

    public TransactionController(TransactionService transactionService, HouseholdService householdService, PersonService personService, ChargerService chargerService, TransactionCategoryService transactionCategoryService) {
        this.transactionService = transactionService;
        this.householdService = householdService;
        this.personService = personService;
        this.chargerService = chargerService;
        this.transactionCategoryService = transactionCategoryService;
    }

    @GetMapping("/add-income")
    public String getAddIncome(Model model) {
        List<Household> households = householdService.getHouseholdList();
        model.addAttribute("households", households);

        List<Person> people = personService.getPersons();
        model.addAttribute("people", people);

        return "management/add-income";
    }

    @GetMapping("/add-outcome")
    public String getAddOutcome(Model model) {
        List<Household> households = householdService.getHouseholdList();
        model.addAttribute("households", households);

        List<Person> people = personService.getPersons();
        model.addAttribute("people", people);

        List<Charger> chargers = chargerService.getChargers();
        model.addAttribute("chargers", chargers);

        List<TransactionCategory> transactionCategories = transactionCategoryService.getTransactionCategories();
        model.addAttribute("categories", transactionCategories);

        return "management/add-outcome";
    }

    @GetMapping("/edit-transaction/{id}")
    public String getEditTransaction(@PathVariable("id") Long id, Model model) {
        Transaction transaction = transactionService.getTransaction(id);
        model.addAttribute("transaction", transaction);
        if (transaction.getTransactionType().equals(TransactionType.DOCHOD)) {
            return "management/edit-income";
        } else if (transaction.getTransactionType().equals(TransactionType.KOSZT)) {
            return "management/edit-outcome";
        } else {
            return "index";
        }
    }

    @PostMapping("/add-income")
    public RedirectView postAddIncome(Transaction transaction) {
        transactionService.addIncome(transaction);
        return new RedirectView("/add-income");
    }

    @PostMapping("/add-outcome")
    public RedirectView postAddOutcome(Transaction transaction) {
        transactionService.addOutcome(transaction);
        return new RedirectView("/add-outcome");
    }

    @PostMapping("/delete-transaction/{id}")
    public RedirectView deleteTransaction(@PathVariable("id") Long id) {
        transactionService.deleteTransaction(id);
        return new RedirectView("/index");
    }

}
