package pl.home.paymentsmanagement.service;

import org.springframework.stereotype.Service;
import pl.home.paymentsmanagement.model.TransactionCategory;
import pl.home.paymentsmanagement.repository.TransactionCategoryRepository;

import java.util.List;

@Service
public class TransactionCategoryService {

    private final TransactionCategoryRepository transactionCategoryRepository;

    public TransactionCategoryService(TransactionCategoryRepository transactionCategoryRepository) {
        this.transactionCategoryRepository = transactionCategoryRepository;
    }

    public List<TransactionCategory> getTransactionCategories() {
        return transactionCategoryRepository.findAll();
    }
}
