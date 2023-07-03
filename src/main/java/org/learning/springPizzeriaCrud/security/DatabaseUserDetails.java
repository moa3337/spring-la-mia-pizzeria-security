package org.learning.springPizzeriaCrud.security;

import org.learning.springPizzeriaCrud.model.Role;
import org.learning.springPizzeriaCrud.model.User;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

public class DatabaseUserDetails implements UserDetails {
    private final Integer id;

    private final String username;

    private final String password;

    private final Set<GrantedAuthority> authorities;

    // Costruttore che copia i dati di uno user per costruire un db
    public DatabaseUserDetails(User user) {
        // Coppio i campi che hanno corrispondenza
        this.id = user.getId();
        this.username = user.getEmail();
        this.password = user.getPassword();

        this.authorities = new HashSet<>();
        // Itero su tutti i ruoli e li trasformo in Authorities
        for (Role role : user.getRoles()) {
            authorities.add((new SimpleGrantedAuthority(role.getName())));
        }
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return this.authorities;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return username;
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
