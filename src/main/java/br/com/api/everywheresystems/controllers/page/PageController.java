package br.com.api.everywheresystems.controllers.page;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import br.com.api.everywheresystems.util.scripts.ShellScript;

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
    public String testeDocker(HttpServletRequest request, Model model) {
        model.addAttribute("container", ShellScript.executarShellScript("docker container ls"));
        // System.out.println(ShellScript.executarShellScript("docker container ls"));

        return "docker/docker";
    }

    // @GetMapping(value = { "/docker.html/{log}", "/docker/{log}" })
    // public String showContainerLog(HttpServletRequest request, Model model,
    // @PathVariable("log") String log) {
    // System.out.println(log);// TODO
    // model.addAttribute("log", resp);
    // // model.addAttribute("erro", "");
    //
    // return "docker/docker";
    // }

    @GetMapping(value = { "/docker.html/{container}", "/docker/{container}" })
    public String showContainer(HttpServletRequest request, Model model, @PathVariable("container") String container) {
        System.out.println(container);// TODO
        // model.addAttribute("container", resp);
        // model.addAttribute("erro", "");

        return "docker/docker";
    }

    @GetMapping("/gerenciarDocker.html")
    public String testeGerenciarDocker(HttpServletRequest request, Model model) {
        model.addAttribute("container", ShellScript.executarShellScript("docker container ls -a"));
        // System.out.println(ShellScript.executarShellScript("docker container ls"));
        return "docker/gerenciarDocker";
    }

    @GetMapping(value = { "/index.html", "/" })
    public String testeIndex(HttpServletRequest request) {
        return "index/index";
    }

    @GetMapping("/login.html")
    public String testeLogin(HttpServletRequest request) {
        return "login/login";
    }
}
