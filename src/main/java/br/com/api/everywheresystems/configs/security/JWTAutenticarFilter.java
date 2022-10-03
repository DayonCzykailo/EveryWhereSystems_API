package br.com.api.everywheresystems.configs.security;

import java.io.IOException;
import java.util.Date;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.fasterxml.jackson.databind.ObjectMapper;

import br.com.api.everywheresystems.models.AccontModel;

public class JWTAutenticarFilter extends UsernamePasswordAuthenticationFilter {
    private final AuthenticationManager manager;

    public static final int TOKEN_EXPIRACAO =  600_000; // 10 minutos
    public static final String TOKEN_SENHA = "Senha";// kkkk nao deveria tar aqui, teria q ter um arquivo config para
                                                     // isso

    public JWTAutenticarFilter(AuthenticationManager manager) {
        this.manager = manager;

        setFilterProcessesUrl("/auth");
    }
    @Override
    public Authentication attemptAuthentication(HttpServletRequest request, HttpServletResponse response)
            throws AuthenticationException {

        try {
            AccontModel accontModel = new ObjectMapper().readValue(request.getInputStream(), AccontModel.class);

            
            return manager.authenticate(new UsernamePasswordAuthenticationToken(
                    accontModel.getEmail(),
                    accontModel.getSenha(),
                    accontModel.getRoles()));
        } catch (IOException e) {
            throw new RuntimeException("Falha ao autenticar o Usuário", e);
        }
    }

    @Override
    protected void successfulAuthentication(HttpServletRequest request, HttpServletResponse response, FilterChain chain,
            Authentication authResult) throws IOException, ServletException {

        PermissoesConfigs permissoesConfigs = (PermissoesConfigs) authResult.getPrincipal();

        String token = JWT.create().withSubject(permissoesConfigs.getUsername())//.withClaim("name", "value")
                .withExpiresAt(new Date(System.currentTimeMillis() + TOKEN_EXPIRACAO))
                .sign(Algorithm.HMAC512(TOKEN_SENHA));

        response.getWriter().write(token);
        response.getWriter().flush();
    }

}
