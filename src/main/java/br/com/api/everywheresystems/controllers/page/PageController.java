package br.com.api.everywheresystems.controllers.page;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {
    
    @GetMapping("/dash.html")
    public String teste(HttpServletRequest request) {
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

    @GetMapping("/index.html")
    public String testeIndex(HttpServletRequest request) {
        return "index/index";
    }

    @GetMapping("/login.html")
    public String testeLogin(HttpServletRequest request) {
        return "login/login";
    }

    @GetMapping("/gerenciarUsuarios.html")
    public String testeGerenciarUser(HttpServletRequest request) {
        return "user/gerenciarUsuarios";
    }

    @GetMapping("/cadastroUsuario.html")
    public String testeCadastroUser(HttpServletRequest request) {
        return "user/cadastroUsuario";
    }

    @GetMapping("/gerenciarClientes.html")
    public String testeGerenciarCliente(HttpServletRequest request) {
        return "clients/gerenciarClientes";
    }

    @GetMapping("/cadastroCliente.html")
    public String testeCadastroCliente(HttpServletRequest request) {
        return "clients/cadastroCliente";
    }

}