package pl.home.paymentsmanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.home.paymentsmanagement.model.TransactionCategory;

public interface TransactionCategoryRepository extends JpaRepository<TransactionCategory, Long> {
}
