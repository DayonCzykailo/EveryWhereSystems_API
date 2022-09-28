package br.com.api.everywheresystems.configs.security;

import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

import br.com.api.everywheresystems.services.LoginService;


@EnableWebSecurity
public class WebSecurityConfigs extends WebSecurityConfigurerAdapter {

    private final PermissoesServiceConfigsImpl permissoesServiceConfigsImpl;
    private final PasswordEncoder encoder;
    private final  LoginService loginService;

    public WebSecurityConfigs(PermissoesServiceConfigsImpl permissoesServiceConfigsImpl, PasswordEncoder encoder,  LoginService loginService) {
        this.permissoesServiceConfigsImpl = permissoesServiceConfigsImpl;
        this.encoder = encoder;
        this.loginService = loginService;
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        
        auth.userDetailsService(permissoesServiceConfigsImpl).passwordEncoder(encoder);
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
        .csrf() 
        .disable()
        .httpBasic()
        .and()
        .authorizeRequests().antMatchers( "/auth**", "/auth/**").permitAll()
        .antMatchers(HttpMethod.GET, "/conta/criar/admin").hasAuthority("ROLE_ADMIN")
        .antMatchers(HttpMethod.POST, "/conta/criar/user").hasAuthority("ROLE_ADMIN")
        .antMatchers(HttpMethod.POST, "/conta/criar/subuser").hasAuthority("ROLE_USER")
        .anyRequest().authenticated()
        .and()
                .addFilter(new JWTAutenticarFilter(authenticationManager()))
                .addFilter(new JWTValidarFilter(authenticationManager(),loginService))
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS); 
    }

    
    @Bean
    CorsConfigurationSource corsConfigurationSource(){//liberar cors
        final UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();

        CorsConfiguration corsConfiguration = new CorsConfiguration().applyPermitDefaultValues();
        source.registerCorsConfiguration("/**", corsConfiguration);

        return source;
    }
    
}
