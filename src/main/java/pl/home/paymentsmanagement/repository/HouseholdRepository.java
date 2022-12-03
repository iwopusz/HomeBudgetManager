package pl.home.paymentsmanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.home.paymentsmanagement.model.Household;
import pl.home.paymentsmanagement.model.Person;

import java.util.List;

public interface HouseholdRepository extends JpaRepository<Household, Long> {




}
