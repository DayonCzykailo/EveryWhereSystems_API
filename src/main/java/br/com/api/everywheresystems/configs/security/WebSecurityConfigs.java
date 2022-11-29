package br.com.api.everywheresystems.configs.security;

import java.util.LinkedHashMap;

import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.security.web.authentication.DelegatingAuthenticationEntryPoint;
import org.springframework.security.web.authentication.LoginUrlAuthenticationEntryPoint;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.security.web.util.matcher.RequestMatcher;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

import br.com.api.everywheresystems.configs.LoginSuccessHandler;
import br.com.api.everywheresystems.services.AccontService;
import br.com.api.everywheresystems.util.Endpoints;
import br.com.api.everywheresystems.util.Roles;

@EnableWebSecurity
public class WebSecurityConfigs extends WebSecurityConfigurerAdapter {

    private final PermissoesServiceConfigsImpl permissoesServiceConfigsImpl;
    private final PasswordEncoder encoder;
    private final AccontService loginService;
    private final LoginSuccessHandler loginSuccessHandler;

    public WebSecurityConfigs(PermissoesServiceConfigsImpl permissoesServiceConfigsImpl, PasswordEncoder encoder,
            AccontService loginService, LoginSuccessHandler loginSuccessHandler) {
        this.permissoesServiceConfigsImpl = permissoesServiceConfigsImpl;
        this.encoder = encoder;
        this.loginService = loginService;
        this.loginSuccessHandler = loginSuccessHandler;
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(permissoesServiceConfigsImpl).passwordEncoder(encoder);// pega os usuario do banco //
                                                                                       // cria a sessão
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.exceptionHandling().authenticationEntryPoint(delegatingEntryPoint());

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
                .antMatchers(Endpoints.authAutorization.toArray(new String[0])).permitAll()// url que nao precisa de
                                                                                           // autorização ou estar
                                                                                           // logado
                .and()
                .authorizeRequests()
                .antMatchers("/dash.html").hasAnyAuthority(Roles.listDash.toArray(new String[0]))
                .antMatchers("/gerenciarDash.html").hasAnyAuthority(Roles.listManageDash.toArray(new String[0]))

                .antMatchers("/docker.html").hasAnyAuthority(Roles.listDocker.toArray(new String[0]))
                .antMatchers("/gerenciarDocker.html").hasAnyAuthority(Roles.listManageDocker.toArray(new String[0]))

                .antMatchers("/formularios.html").hasAnyAuthority(Roles.listForms.toArray(new String[0]))
                .antMatchers("/gerenciarFormularios.html").hasAnyAuthority(Roles.listManageForms.toArray(new String[0]))

                .antMatchers("/gerenciarUsuarios.html").hasAnyAuthority(Roles.listManageUser.toArray(new String[0]))
                .antMatchers("/cadastroUsuario.html").hasAnyAuthority(Roles.listRegisterUser.toArray(new String[0]))

                .antMatchers("/gerenciarClientes.html").hasAnyAuthority(Roles.listManageClients.toArray(new String[0]))
                .antMatchers("/cadastroCliente.html").hasAnyAuthority(Roles.listRegisterClients.toArray(new String[0]))

                .anyRequest().authenticated()
                .and()
                .exceptionHandling().accessDeniedPage("/403.html")
                .and()
                // login
                .formLogin().loginPage("/login.html")
                .loginProcessingUrl("/login.html")
                .successHandler(loginSuccessHandler)
                .permitAll()
                .and()
                // logout
                .logout()
                .logoutUrl("/logout")
                .invalidateHttpSession(true)
                .deleteCookies("JSESSIONID")// limpa alguns cookie de sessão
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

    @Bean
    public AuthenticationEntryPoint delegatingEntryPoint() {
        final LinkedHashMap<RequestMatcher, AuthenticationEntryPoint> map = new LinkedHashMap<RequestMatcher, AuthenticationEntryPoint>();
        map.put(new AntPathRequestMatcher("/"), new LoginUrlAuthenticationEntryPoint("/login.html"));

        final DelegatingAuthenticationEntryPoint entryPoint = new DelegatingAuthenticationEntryPoint(map);
        entryPoint.setDefaultEntryPoint(new LoginUrlAuthenticationEntryPoint("/login.html"));

        return entryPoint;
    }
}
