package br.com.api.everywheresystems.configs.security;

import java.util.Optional;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import br.com.api.everywheresystems.models.AccontModel;
import br.com.api.everywheresystems.services.AccontService;

@Component
public class PermissoesServiceConfigsImpl implements UserDetailsService {

    private final AccontService loginService;

    public PermissoesServiceConfigsImpl(AccontService loginService) {
        this.loginService = loginService;
    }

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {// bunca o usuario
        Optional<AccontModel> accont = loginService.findByEmail(email);
        if (accont.isEmpty()) {
            throw new UsernameNotFoundException("Usuário [" + email + "] não encontrado !!!");
        }
        return new PermissoesConfigs(accont);
    }

}
