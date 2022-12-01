package pl.home.paymentsmanagement.service;

import org.springframework.stereotype.Service;
import pl.home.paymentsmanagement.model.Household;
import pl.home.paymentsmanagement.repository.HouseholdRepository;

import java.util.List;

@Service
public class HouseholdService {

    private final HouseholdRepository householdRepository;

    public HouseholdService(HouseholdRepository householdRepository) {
        this.householdRepository = householdRepository;
    }

    public List<Household> getHouseholdList() {
        return householdRepository.findAll();
    }

    public void addHousehold(Household household){
        householdRepository.save(household);
    }

    public Household getHousehold(Long id){
        return householdRepository.findById(id).orElse(null);
    }

    public void editHousehold(Household household){
        householdRepository.save(household);
    }
}
