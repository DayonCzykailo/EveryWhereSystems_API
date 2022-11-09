package br.com.api.everywheresystems.controllers.page;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {
    @GetMapping("/dash.html")
    public String teste(HttpServletRequest request, Authentication authentication) {
        request.setAttribute("teste", "retorno teste");

        return "dash/dash";
    }

    @GetMapping("/gerenciarDash.html")
    public String testeGerenciarDash(HttpServletRequest request) {
        request.setAttribute("teste", "retorno teste");
        return "dash/gerenciarDash";
    }

    @GetMapping("/docker.html")
    public String testeDocker(HttpServletRequest request) {
        return "docker/docker";
    }

    @GetMapping("/gerenciarDocker.html")
    public String testeGerenciarDocker(HttpServletRequest request) {
        return "docker/gerenciarDocker";
    }

    @GetMapping("/formularios.html")
    public String testeForms(HttpServletRequest request) {
        return "forms/formularios";
    }

    @GetMapping("/gerenciarFormularios.html")
    public String testeGerenciarForms(HttpServletRequest request) {
        return "forms/gerenciarFormularios";
    }

    @GetMapping(value = {"/index.html","/"})
    public String testeIndex(HttpServletRequest request) {
        return "index/index";
    }

    @GetMapping("/login.html")
    public String testeLogin(HttpServletRequest request) {
        return "login/login";
    }
}
