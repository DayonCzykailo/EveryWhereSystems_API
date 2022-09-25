package br.com.api.everywheresystems.configs.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
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

import br.com.api.everywheresystems.models.AccontModel;
import br.com.api.everywheresystems.models.RoleModel;
import br.com.api.everywheresystems.models.enums.Role;
import br.com.api.everywheresystems.services.LoginService;

public class JWTValidarFilter extends BasicAuthenticationFilter {

    public static final String HEADER_ATRIBUTO = "Authorization";
    public static final String BEARER_ATRIBUTO = "Bearer ";

    final LoginService loginService;

    public JWTValidarFilter(AuthenticationManager authenticationManager, LoginService loginService) {
        super(authenticationManager);
        this.loginService = loginService;
    }

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
            throws IOException, ServletException {
                String atributo = request.getHeader(HEADER_ATRIBUTO);

                if(atributo == null){
                    chain.doFilter(request, response);
                    return;
                }

                if(!atributo.startsWith(BEARER_ATRIBUTO)){

                    chain.doFilter(request, response);
                    return;
                }

                String token = atributo.replace(BEARER_ATRIBUTO, "");

                UsernamePasswordAuthenticationToken authenticationToken = getAuthenticationToken(token);

                SecurityContextHolder.getContext().setAuthentication(authenticationToken);

                chain.doFilter(request, response);

                
    }
  
    private UsernamePasswordAuthenticationToken getAuthenticationToken(String token){
        String usuario = JWT.require(Algorithm.HMAC512(JWTAutenticarFilter.TOKEN_SENHA))
        .build().verify(token).getSubject();

        System.out.println(usuario);

        
        
        if(usuario == null){
            return null;
        }
        Optional<AccontModel> accontModel = loginService.findByEmail(usuario);

        if(accontModel.isEmpty()){
            return null;
        }


        return new UsernamePasswordAuthenticationToken(usuario, null, accontModel.get().getRoles());
    }
}
