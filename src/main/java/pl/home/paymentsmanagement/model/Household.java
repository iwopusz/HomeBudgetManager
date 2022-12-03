package pl.home.paymentsmanagement.model;


import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

@Entity(name = "household")
@Getter
@Setter
public class Household{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String address;
    private String city;
    private BigDecimal current_balance;

    @ManyToMany
    @JoinTable(name = "household_users",
    joinColumns = @JoinColumn(name = "household_id"),
    inverseJoinColumns = @JoinColumn(name = "person_id"))
    private Set<Person> people = new HashSet<>();

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL, mappedBy = "household")
    private Set<Transaction> transactions = new HashSet<>();



}
