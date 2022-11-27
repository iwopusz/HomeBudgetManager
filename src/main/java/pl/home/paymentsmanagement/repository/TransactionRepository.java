package pl.home.paymentsmanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.home.paymentsmanagement.model.Transaction;

public interface TransactionRepository extends JpaRepository<Transaction, Long> {
}
