package br.com.api.everywheresystems.configs.security;

import java.util.Optional;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import br.com.api.everywheresystems.models.AccontModel;
import br.com.api.everywheresystems.services.LoginService;

@Component
public class PermissoesServiceConfigsImpl implements UserDetailsService{

    private final LoginService loginService;

    public PermissoesServiceConfigsImpl(LoginService loginService) {
        this.loginService = loginService;
    }

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        Optional<AccontModel> accont = loginService.findByEmail(email);
        if(accont.isEmpty()){
            throw new UsernameNotFoundException("Usuário ["+email+"] não encontrado !!!");
        }
        return new PermissoesConfigs(accont);
    }
    
}