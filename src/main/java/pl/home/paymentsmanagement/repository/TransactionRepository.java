package pl.home.paymentsmanagement.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.home.paymentsmanagement.model.Transaction;

public interface TransactionRepository extends JpaRepository<Transaction, Long> {

//    @Query(value = "SELECT t FROM transaction t ORDER BY t.transactionDate DESC")
//    Page<Transaction> findAllOrderByDateDesc(Pageable pageable);

    Page<Transaction> findAllByOrderByTransactionDateDesc(Pageable pageable);

}
