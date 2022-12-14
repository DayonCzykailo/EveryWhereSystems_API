package br.com.api.everywheresystems.configs.security;

import java.util.Collection;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.security.core.userdetails.UserDetails;

import br.com.api.everywheresystems.models.AccontModel;
import br.com.api.everywheresystems.models.RoleModel;

public class PermissoesConfigs implements UserDetails {

    private final Optional<AccontModel> accont;

    public PermissoesConfigs(Optional<AccontModel> accont) {
        this.accont = accont;
    }

    @Override
    public Collection<RoleModel> getAuthorities() {

        return accont.orElse(new AccontModel()).getRoles().stream().map(role -> role).collect(Collectors.toSet());
    }

    @Override
    public String getPassword() {

        return accont.orElse(new AccontModel()).getSenha();
    }

    @Override
    public String getUsername() {

        return accont.orElse(new AccontModel()).getEmail();
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
