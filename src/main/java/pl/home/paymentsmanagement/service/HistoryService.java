package pl.home.paymentsmanagement.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import pl.home.paymentsmanagement.model.Transaction;
import pl.home.paymentsmanagement.repository.TransactionRepository;

@Service
public class HistoryService {

    private final TransactionRepository transactionRepository;

    public HistoryService(TransactionRepository transactionRepository) {
        this.transactionRepository = transactionRepository;
    }

    public Page<Transaction> findAllOrderedByTransactionDate(Pageable pageable) {
        return transactionRepository.findAllByOrderByTransactionDateDesc(pageable);
    }


}
