package pl.home.paymentsmanagement.controller;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;
import pl.home.paymentsmanagement.model.Charger;
import pl.home.paymentsmanagement.service.ChargerService;

import java.util.List;


@Controller
@AllArgsConstructor
public class ManageChargerController {

    private final ChargerService chargerService;

    @GetMapping("/chargers")
    public String getChargersList(Model model){
        List<Charger> chargerList = chargerService.getChargers();
        model.addAttribute("charger",chargerList);
        return "management/chargersList";
    }

    @GetMapping("/addCharger")
    public String getAddCharger(){
        return "management/addCharger";
    }

    @PostMapping ("/addCharger")
    public RedirectView postAddCharger(Charger charger){
        chargerService.addCharger(charger);
        return new RedirectView("/chargers");
    }

    @GetMapping("/editCharger/{id}")
    public String getEditCharger(@PathVariable("id") Long id, Model model){
        Charger charger = chargerService.getCharger(id);
        model.addAttribute("charger", charger);
        return "management/editCharger";
    }

    @PostMapping("/editCharger/{id}")
    public RedirectView saveCharger(Charger charger, @PathVariable("id") Long id) {
        chargerService.editCharger(charger);
        return new RedirectView("/chargers");
    }

    @PostMapping ("/addCharger/{id}")
    public RedirectView postEditCharger(Charger editCharger, @PathVariable("id") Long id){
        chargerService.editCharger(editCharger);
        return new RedirectView("/chargers");
    }

    @GetMapping("/deleteCharger/{id}")
    public RedirectView deleteCharger(@PathVariable("id") Long id){
        chargerService.deleteCharger(id);
        return new RedirectView("/chargers");
    }

}

