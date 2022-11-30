package pl.home.paymentsmanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.home.paymentsmanagement.model.Household;

public interface HouseholdRepository extends JpaRepository<Household, Long> {
}
