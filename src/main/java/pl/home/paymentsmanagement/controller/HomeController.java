package pl.home.paymentsmanagement.controller;

import lombok.AllArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.home.paymentsmanagement.model.Person;
import pl.home.paymentsmanagement.security.LoginDetailsSecurity;
import pl.home.paymentsmanagement.service.LoginDetailService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class HomeController {

    private final LoginDetailService loginDetailService;


    public HomeController(LoginDetailService loginDetailService) {
        this.loginDetailService = loginDetailService;
    }

    @GetMapping("/")
    public String getHome(Model model) {
//        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//        String currentPrincipalName = authentication.getName();
//        LoginDetailsSecurity loggedPerson = (LoginDetailsSecurity) loginDetailService.loadUserByUsername(currentPrincipalName);
        LoginDetailsSecurity loggedPerson = (LoginDetailsSecurity)(SecurityContextHolder.getContext().getAuthentication().getPrincipal());
        model.addAttribute("loggedUser", loggedPerson);
        return "index";
    }

    @GetMapping("/original")
    public String getHomeOriginal(Model model) {
        return "index_original_source";
    }

    @GetMapping("/login")
    public String getLogin(){
        return "samples/login";
    }

    @PostMapping("/login_success")
    public String postLoginSuccess(){
        System.out.println("Login user login success...");
        return "index";
    }

    @GetMapping("/logout")
    public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/";
    }

    @GetMapping("/lock")
    public String getLock(){return "/samples/lock-screen";}


    @GetMapping("/register")
    public String getRegister(){return "/samples/register";}


}
