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
    @GetMapping(value = { "/index.html", "/" })
    public String testeIndex(HttpServletRequest request) {
        return "index/index";
    }

    @GetMapping("/login.html")
    public String testeLogin(HttpServletRequest request) {
        return "login/login";
    }
}
