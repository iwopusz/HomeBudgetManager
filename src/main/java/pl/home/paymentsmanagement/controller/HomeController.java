package pl.home.paymentsmanagement.controller;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
@AllArgsConstructor
public class HomeController {


    @GetMapping("/")
    public String getHome(Model model) {
        return "index";
    }

    @GetMapping("/original")
    public String getHomeOriginal(Model model) {
        return "index_original_source";
    }

    @GetMapping("/login")
    public String getLogin(){
        return "/samples/login";
    }

    @GetMapping("/lock")
    public String getLock(){return "/samples/lock-screen";}

    @GetMapping("/register")
    public String getRegister(){return "/samples/register";}


}
