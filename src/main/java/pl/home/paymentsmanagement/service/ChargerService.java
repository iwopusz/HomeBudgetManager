package pl.home.paymentsmanagement.service;

import org.springframework.stereotype.Service;
import pl.home.paymentsmanagement.model.Charger;
import pl.home.paymentsmanagement.repository.ChargerRepository;

import java.util.List;

@Service
public class ChargerService {

    private final ChargerRepository chargerRepository;

    public ChargerService(ChargerRepository chargerRepository) {
        this.chargerRepository = chargerRepository;
    }

    public void addCharger(Charger charger){
        chargerRepository.save(charger);
    }

    public List<Charger> getChargers(){
        return chargerRepository.findAll();
    }

    public Charger getCharger(Long id){
        return chargerRepository.findById(id).orElse(null);
    }

    public void editCharger(Charger charger){
        chargerRepository.save(charger);
    }

    public void  deleteCharger(Long id){ chargerRepository.deleteById(id); }

//    private final ChargerRepository chargerRepository;
//
//    public ChargerService(ChargerRepository chargerRepository) {
//        this.chargerRepository = chargerRepository;
//    }
//
//    public List<Charger> getChargers() {
//        return chargerRepository.findAll();
//    }
//
//    public Charger getCharger(Long id) {
//        return chargerRepository.findById(id).orElse(null);
//    }
//
//    public void editCharger(Charger charger) {
//        chargerRepository.save(charger);
//    }
}