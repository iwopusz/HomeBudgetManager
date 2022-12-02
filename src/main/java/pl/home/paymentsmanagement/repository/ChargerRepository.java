package pl.home.paymentsmanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.home.paymentsmanagement.model.Charger;

@Repository
public interface ChargerRepository extends JpaRepository<Charger, Long> {
}
