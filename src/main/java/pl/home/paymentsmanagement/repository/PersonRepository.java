package pl.home.paymentsmanagement.repository;

import org.hibernate.annotations.Parameter;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import pl.home.paymentsmanagement.model.Person;
import pl.home.paymentsmanagement.model.PersonType;

import java.util.List;

@Repository
public interface PersonRepository extends JpaRepository<Person, Long> {

    @Query("SELECT DISTINCT p FROM household h JOIN h.people p WHERE h.id = :id ")
    List<Person> findAllPersonsHouseholds(Long id);

    Person findByUserName(String username);

}
