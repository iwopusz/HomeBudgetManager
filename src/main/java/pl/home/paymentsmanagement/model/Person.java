package pl.home.paymentsmanagement.model;

import javax.persistence.*;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Getter
@Setter
public class Person {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String userName;
    private String firstName;
    private String lastName;
    private String email;
    private String password;

//    @Column(name = "person_type")
//    @Enumerated(EnumType.STRING)
    private String personType;

    private boolean enabled;

    @ManyToMany(mappedBy = "people")
    private Set<Household> households;

    @OneToMany(fetch = FetchType.EAGER,cascade = CascadeType.ALL, mappedBy = "person")
    private Set<Transaction> transactionsList = new HashSet<>();

}
