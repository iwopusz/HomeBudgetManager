package pl.home.paymentsmanagement.controller;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import pl.home.paymentsmanagement.model.Transaction;
import pl.home.paymentsmanagement.service.HistoryService;

import java.util.List;

@Controller
public class HistoryController {

    private final HistoryService historyService;

    public HistoryController(HistoryService historyService) {
        this.historyService = historyService;
    }

    @ModelAttribute("historyPage")
    public Page<Transaction> getHistory(@PageableDefault(size = 3) Pageable page) {
        return historyService.findAllOrderedByTransactionDate(page);
    }

    @ModelAttribute("history")
    public List<Transaction> getHistoryList(@PageableDefault(size = 3) Pageable page) {
        return getHistory(page).getContent();
    }

    @GetMapping(value = {"/history", "/history/"})
    public String getHistory() {
        return "/management/history";
    }
}
