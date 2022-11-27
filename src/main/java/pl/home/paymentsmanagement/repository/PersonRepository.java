package pl.home.paymentsmanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.home.paymentsmanagement.model.Person;

@Repository
public interface PersonRepository extends JpaRepository<Person, Long> {
}
