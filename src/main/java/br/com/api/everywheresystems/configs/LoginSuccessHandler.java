package br.com.api.everywheresystems.configs;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

@Component
public class LoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

    @Override
    protected String determineTargetUrl(HttpServletRequest request, HttpServletResponse response) {
        final String role = SecurityContextHolder.getContext().getAuthentication()
                .getAuthorities().toString();

        if (role.contains("ROLE_ACCESS_REGISTER_USERS")) {
            return "gerenciarUsuarios.html";
        }
        if (role.contains("ROLE_ACCESS_REGISTER_FORMS")) {
            return "gerenciarFormularios.html";
        }

        if (role.contains("ROLE_USER")) {
            return "dash.html";
        }

        if (role.contains("ROLE_SUB_USER")) {
            return "dash.html";
        }

        if (role.contains("ROLE_ADMIN")) {
            return "gerenciarDocker.html";
        }

        return "login.html";
    }

}