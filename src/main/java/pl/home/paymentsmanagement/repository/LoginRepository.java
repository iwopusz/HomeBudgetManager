package pl.home.paymentsmanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import pl.home.paymentsmanagement.model.Person;

import java.util.Optional;


public interface LoginRepository extends CrudRepository<Person, Long> {

    @Query("SELECT p FROM Person p WHERE p.userName =:loginName")
    public Person getPersonByLogin(@Param("loginName") String loginName);

}
