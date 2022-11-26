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
    inverseJoinColumns = @JoinColumn(name = "persons_id"))
    private Set<Persons> persons = new HashSet<>();

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL, mappedBy = "households")
    private Set<Transaction> transactions = new HashSet<>();

}
