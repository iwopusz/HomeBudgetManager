package pl.home.paymentsmanagement.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import pl.home.paymentsmanagement.model.Person;
import pl.home.paymentsmanagement.model.Transaction;
import pl.home.paymentsmanagement.repository.PersonRepository;
import pl.home.paymentsmanagement.repository.TransactionRepository;

import javax.transaction.Transactional;

@Service
public class HistoryService {

    private final TransactionRepository transactionRepository;
    private final PersonRepository personRepository;

    public HistoryService(TransactionRepository transactionRepository, PersonRepository personRepository) {
        this.transactionRepository = transactionRepository;
        this.personRepository = personRepository;
    }

    @Transactional
    public Page<Transaction> findAllOrderedByTransactionDate(String username, Pageable pageable) {
        Person byUserName = personRepository.findByUserName(username);
        return transactionRepository.findAllPersonIsEligibleToSee(byUserName.getHouseholds(), Pageable.unpaged());
    }


}
