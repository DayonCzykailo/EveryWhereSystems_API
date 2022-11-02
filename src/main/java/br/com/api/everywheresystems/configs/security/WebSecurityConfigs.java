package br.com.api.everywheresystems.configs.security;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

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

import br.com.api.everywheresystems.services.AccontService;
import br.com.api.everywheresystems.util.Endpoints;

@EnableWebSecurity
public class WebSecurityConfigs extends WebSecurityConfigurerAdapter {

    private final PermissoesServiceConfigsImpl permissoesServiceConfigsImpl;
    private final PasswordEncoder encoder;
    private final AccontService loginService;

    public WebSecurityConfigs(PermissoesServiceConfigsImpl permissoesServiceConfigsImpl, PasswordEncoder encoder,
            AccontService loginService) {
        this.permissoesServiceConfigsImpl = permissoesServiceConfigsImpl;
        this.encoder = encoder;
        this.loginService = loginService;
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
         auth.inMemoryAuthentication()
         .withUser("email@email.com")
         .password(encoder.encode("senha"))
         .authorities("USER");

        auth.userDetailsService(permissoesServiceConfigsImpl).passwordEncoder(encoder);
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        /*
         * http
         * .csrf()
         * .disable()
         * .httpBasic()
         * .and()
         * .authorizeRequests().antMatchers(Endpoints.authAutorization.toArray(new
         * String[0])).permitAll()
         * .antMatchers(HttpMethod.POST,
         * Endpoints.createAccontAdmin).hasAuthority("ROLE_ADMIN")
         * .antMatchers(HttpMethod.POST,
         * Endpoints.createAccontUser).hasAuthority("ROLE_ADMIN")
         * .antMatchers(HttpMethod.POST,
         * Endpoints.createAccontSubUser).hasAuthority("ROLE_USER")
         * .anyRequest().authenticated()
         * .and()
         * .addFilter(new JWTAutenticarFilter(authenticationManager()))
         * .addFilter(new JWTValidarFilter(authenticationManager(), loginService))
         * .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);
         */

        http
                .csrf()
                .disable()
                .httpBasic()
                .and()
                .authorizeRequests()
                .antMatchers(Endpoints.authAutorization.toArray(new String[0])).permitAll()
                .anyRequest().authenticated()
                .and()
                // login
                .formLogin().loginPage("/login.html")
                .loginProcessingUrl("/login.html")
                .defaultSuccessUrl("/gerenciarDash.html", true)
                .permitAll()
                .and()
                // logout
                .logout()
                .logoutUrl("/logout")
                .invalidateHttpSession(true)
                .deleteCookies("JSESSIONID")//limpa alguns cookie de sessão
                .logoutSuccessUrl("/index.html");
        ;

        /*
         * http
         * .csrf()
         * .disable()
         * .httpBasic()
         * .and()
         * .authorizeRequests().anyRequest().authenticated().and()
         * .formLogin().loginPage("/login.html")
         * .usernameParameter("email")
         * .permitAll()
         * .and()
         * .logout().permitAll()
         * //.and()
         * //.rememberMe()
         * //.tokenRepository(PersistentTokenRepository)
         * ;
         */
    }

    @Bean
    CorsConfigurationSource corsConfigurationSource() {// liberar cors
        final UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();

        CorsConfiguration corsConfiguration = new CorsConfiguration().applyPermitDefaultValues();
        source.registerCorsConfiguration("/**", corsConfiguration);

        return source;
    }

}
