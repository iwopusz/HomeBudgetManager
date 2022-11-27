package pl.home.paymentsmanagement.model;


import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.math.BigDecimal;
import java.util.Date;

@Entity(name = "transaction")
@Getter
@Setter
public class Transaction {

    @Id
//    @GeneratedValue(generator = "uuid")
//    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private Long id;
    private String name;

    @Enumerated(EnumType.STRING)
    private TransactionType transactionType;

    @Enumerated(EnumType.STRING)
    private TransactionPeriod transactionPeriod;
    private BigDecimal amount;
    private String description;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "transaction_category_id")
    private TransactionCategory category;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date transactionDate;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date transactionPaymentDate;

    @ManyToOne
    @JoinColumn(name = "household_id")
    private Household households;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "person_id")
    private Person person;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "charger_id")
    private Charger charger;

}
