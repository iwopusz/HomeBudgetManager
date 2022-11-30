package pl.home.paymentsmanagement.service;

import org.springframework.stereotype.Service;
import pl.home.paymentsmanagement.model.Household;
import pl.home.paymentsmanagement.model.Transaction;
import pl.home.paymentsmanagement.model.TransactionType;
import pl.home.paymentsmanagement.repository.HouseholdRepository;
import pl.home.paymentsmanagement.repository.TransactionRepository;

@Service
public class TransactionService {

    private final TransactionRepository transactionRepository;
    private final HouseholdRepository householdRepository;


    public TransactionService(TransactionRepository transactionRepository, HouseholdRepository householdRepository) {
        this.transactionRepository = transactionRepository;
        this.householdRepository = householdRepository;
    }

    public void addIncome(Transaction transaction) {
        transaction.setTransactionType(TransactionType.DOCHOD);
        Household household = householdRepository.findById(transaction.getHousehold().getId()).orElse(null);
        if (household != null) {
            household.setCurrent_balance(household.getCurrent_balance().add(transaction.getAmount()));
            householdRepository.save(household);
        }
        transactionRepository.save(transaction);
    }

    public void addOutcome(Transaction transaction) {
        transaction.setTransactionType(TransactionType.KOSZT);
        Household household = householdRepository.findById(transaction.getHousehold().getId()).orElse(null);
        if (household != null) {
            household.setCurrent_balance(household.getCurrent_balance().subtract(transaction.getAmount()));
            householdRepository.save(household);
        }
        transactionRepository.save(transaction);
    }

//    public void editIncome(Transaction transaction) {
//        Household household = transaction.getHousehold();
//        if (household == null) {
//            return;
//        }
//
//    }

    public Transaction getTransaction(Long id) {
        return transactionRepository.findById(id).orElse(null);
    }

    public void deleteTransaction(Long id) {
        transactionRepository.deleteById(id);
    }
}
