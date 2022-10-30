package br.com.api.everywheresystems.configs.security;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTDecodeException;
import com.auth0.jwt.exceptions.SignatureVerificationException;
import com.auth0.jwt.exceptions.TokenExpiredException;

import br.com.api.everywheresystems.models.AccontModel;
import br.com.api.everywheresystems.services.AccontService;
import br.com.api.everywheresystems.util.Endpoints;
import br.com.api.everywheresystems.util.Erro;

public class JWTValidarFilter extends BasicAuthenticationFilter {

    public static final String HEADER_ATRIBUTO = "Authorization";
    public static final String BEARER_ATRIBUTO = "Bearer ";

    final AccontService loginService;

    public JWTValidarFilter(AuthenticationManager authenticationManager, AccontService loginService) {
        super(authenticationManager);
        this.loginService = loginService;
    }

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        try {
            String atributo = request.getHeader(HEADER_ATRIBUTO);

            if (atributo == null || atributo.isEmpty()) {
                response.setStatus(401);
                response.setContentType(" application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(new Erro("Não autorizado", "Falta Autorização").toString());
                response.getWriter().flush();

                return;
            }

            if (!atributo.startsWith(BEARER_ATRIBUTO)) {
                response.setStatus(401);
                response.setContentType(" application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(new Erro("Não autorizado", "Tipo de Autorização inválida").toString());
                response.getWriter().flush();

                return;
            }

            SecurityContextHolder.getContext()
                    .setAuthentication(getAuthenticationToken(atributo.replace(BEARER_ATRIBUTO, "")));

        } catch (Exception e) {
            if (e instanceof TokenExpiredException) {
                response.setStatus(401);
                response.setContentType(" application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(new Erro("Token Expirado", "Não autorizado").toString());
                response.getWriter().flush();
                return;
            }
            if (e instanceof JWTDecodeException) {
                response.setStatus(401);
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(new Erro("Token Inválido", "Não autorizado").toString());
                response.getWriter().flush();
                return;
            }
            if (e instanceof SignatureVerificationException) {
                response.setStatus(401);
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(new Erro("Assinatura do Token Inválida", "Não autorizado").toString());
                response.getWriter().flush();
                return;
            }

            response.setStatus(500);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(new Erro("Ops... Algo deu errado.", e, "Erro interno").toString());
            response.getWriter().flush();
            return;
        }

        chain.doFilter(request, response);
    }

    private UsernamePasswordAuthenticationToken getAuthenticationToken(String token) {
        String usuario = JWT.require(Algorithm.HMAC512(JWTAutenticarFilter.TOKEN_SENHA))
                .build().verify(token).getSubject();

        if (usuario == null) {
            return null;
        }

        Optional<AccontModel> accontModel = loginService.findByEmail(usuario);

        if (accontModel.isEmpty()) {
            return null;
        }

        return new UsernamePasswordAuthenticationToken(usuario, null, accontModel.get().getRoles());
    }

    @Override
    protected boolean shouldNotFilter(HttpServletRequest request) throws ServletException {
        String path = request.getRequestURI();

        if (path.startsWith(Endpoints.auth)) {
            return true;
        }

        for (String endpoint : Endpoints.authAutorization) {
            if (endpoint.equals(path)) {
                return true;
            }
        }

        return false;
    }
}
