package br.com.api.everywheresystems.controllers.page;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import br.com.api.everywheresystems.models.AccontModel;
import br.com.api.everywheresystems.models.enums.Role;
import br.com.api.everywheresystems.services.AccontService;
import br.com.api.everywheresystems.services.RolesService;

@Controller
public class PageController {

    @Autowired
    final AccontService accontService;

    @Autowired
    final RolesService roleService;

    PageController(AccontService accontService, RolesService roleService) {
        this.accontService = accontService;
        this.roleService = roleService;
    }

    @GetMapping(value = { "/index.html", "/" })
    public String testeIndex(HttpServletRequest request) {
        return "index/index";
    }

    @GetMapping(value = { "/politicas.html", "/politicas" })
    public String testePolitica(HttpServletRequest request) {
        return "index/termoPolitica";
    }

    @GetMapping("/login.html")
    public String testeLogin(HttpServletRequest request) {

        if (roleService.findAll().size() == 0) {
            roleService.gerarRoles();
        }

        if (accontService.findAllByRoleModels(Role.ROLE_ADMIN).size() == 0) {
            accontService.gerarAdmin();
            System.out.println(accontService.findAllByRoleModels(Role.ROLE_ADMIN).size());
        }

        return "login/login";
    }
}
