package br.com.api.everywheresystems.controllers.accont;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.com.api.everywheresystems.models.AccontModel;
import br.com.api.everywheresystems.models.enums.Role;
import br.com.api.everywheresystems.services.AccontService;

@Controller
public class ClientController {
    @Autowired
    final AccontService clientService;

    public ClientController(AccontService clientService) {
        this.clientService = clientService;
    }

    @GetMapping(value = { "/gerenciarClientes.html", "/gerenciarClientes" })
    public String showGerenciarClient(HttpServletRequest request, Model model) {
        // final User usuario = (User)
        // SecurityContextHolder.getContext().getAuthentication()
        // .getPrincipal();

        if (clientService.findAllByRoleModels(Role.ROLE_USER).toString() == "[]") {
            model.addAttribute("clientes", null);
        } else {
            model.addAttribute("clientes", clientService.findAllByRoleModels(Role.ROLE_USER));
        }

        return "clients/gerenciarClientes";
    }

    @GetMapping(value = { "/cadastroCliente.html", "/cadastroCliente" })
    public String showCadastroClient(HttpServletRequest request, Model model) {
        AccontModel acc = new AccontModel();
        acc.setAtivo(true);
        model.addAttribute("empresa", acc);
        model.addAttribute("isEditar", false);
        model.addAttribute("erro", "");
        return "clients/cadastroCliente";
    }

    @GetMapping(value = { "/cadastroCliente.html/{id}", "/cadastroCliente/{id}" })
    public String showCadastroClientByID(HttpServletRequest request, Model model, @PathVariable("id") String id) {
        model.addAttribute("empresa", clientService.findById(id).get());
        model.addAttribute("isEditar", true);
        model.addAttribute("erro", "");
        return "clients/cadastroCliente";
    }

    @PostMapping(value = { "/cadastroCliente.html/save/{id}", "/cadastroCliente/save/{id}" })
    public String showCadastroClientByID(HttpServletRequest request, Model model,
            @ModelAttribute("empresa") AccontModel empresa, @PathVariable("id") String id) {
        model.addAttribute("empresa", empresa);
        empresa.setId(id);
        model.addAttribute("isEditar", true);
        model.addAttribute("erro", "");

        if (clientService.saveEnterprise(empresa, true)) {
            if (clientService.findAllByRoleModels(Role.ROLE_USER).toString() == "[]") {
                model.addAttribute("clientes", null);
            } else {
                model.addAttribute("clientes", clientService.findAllByRoleModels(Role.ROLE_USER));
            }
            return "clients/gerenciarClientes";
        }
        return "clients/cadastroCliente";
    }

    @PostMapping(value = { "/cadastroCliente/save" })
    public String saveClient(HttpServletRequest request, Model model,
            @ModelAttribute("empresa") AccontModel empresa) {
        empresa.setAtivo(true);

        model.addAttribute("isEditar", true);

        if (clientService.saveEnterprise(empresa, false)) {
            if (clientService.findAllByRoleModels(Role.ROLE_USER).toString() == "[]") {
                model.addAttribute("clientes", null);
            } else {
                model.addAttribute("clientes", clientService.findAllByRoleModels(Role.ROLE_USER));
            }
            return "clients/gerenciarClientes";
        }

        return "clients/cadastroCliente";
    }

}
