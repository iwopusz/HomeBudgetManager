package pl.home.paymentsmanagement.security;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import pl.home.paymentsmanagement.model.Person;

import java.net.UnknownServiceException;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

public class LoginDetailsSecurity implements UserDetails {

    private Person person;

    public LoginDetailsSecurity(Person person) {
        this.person = person;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        SimpleGrantedAuthority authority = new SimpleGrantedAuthority(person.getPersonType());
        return Arrays.asList(authority);
    }

    @Override
    public String getPassword() {
        return person.getPassword();
    }

    @Override
    public String getUsername() {
        return person.getUserName();
    }

    public String getUserFirstName(){
        return person.getFirstName();
    }

    public Long getUserId(){
        return person.getId();
    }

    public String getUserLastName(){
        return person.getLastName();
    }

    public String getUserEmail(){
        return person.getEmail();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
