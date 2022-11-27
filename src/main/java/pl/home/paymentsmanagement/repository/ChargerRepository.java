package pl.home.paymentsmanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.home.paymentsmanagement.model.Charger;

public interface ChargerRepository extends JpaRepository<Charger, Long> {
}
