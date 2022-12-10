package pl.home.paymentsmanagement.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.home.paymentsmanagement.model.Household;
import pl.home.paymentsmanagement.model.Person;
import pl.home.paymentsmanagement.model.Transaction;

import java.util.Set;

public interface TransactionRepository extends JpaRepository<Transaction, Long> {

    Page<Transaction> findAllByOrderByTransactionDateDesc(Pageable pageable);

    @Query("select t from transaction t where t.household in :household")
    Page<Transaction> findAllPersonIsEligibleToSee(Set<Household> household, Pageable pageable);
}
