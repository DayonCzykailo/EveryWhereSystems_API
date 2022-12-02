package br.com.api.everywheresystems.controllers.accont;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.api.everywheresystems.models.AccontModel;
import br.com.api.everywheresystems.models.RoleModel;
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
        List<AccontModel> acconts = new ArrayList<AccontModel>();
        acconts.addAll(clientService.findAllByRoleModels(Role.ROLE_USER));
        acconts.addAll(clientService.findAllByRoleModels(Role.ROLE_ADMIN));

        String auth = request.getUserPrincipal().getName();
        model.addAttribute("email", "Usuário: " + auth);

        if (acconts.toString() == "[]") {
            model.addAttribute("clientes", null);
        } else {
            model.addAttribute("clientes", acconts);
        }

        return "clients/gerenciarClientes";
    }

    @GetMapping(value = { "/cadastroCliente.html", "/cadastroCliente" })
    public String showCadastroClient(HttpServletRequest request, Model model) {
        AccontModel acc = new AccontModel();
        acc.setAtivo(true);
        model.addAttribute("empresa", acc);
        model.addAttribute("isEditar", false);
        model.addAttribute("role", "USER");
        String auth = request.getUserPrincipal().getName();
        model.addAttribute("email", "Usuário: " + auth);
        return "clients/cadastroCliente";
    }

    @GetMapping(value = { "/cadastroCliente.html/{id}", "/cadastroCliente/{id}" })
    public String showCadastroClientByID(HttpServletRequest request, Model model, @PathVariable("id") String id) {
        AccontModel empresa = clientService.findById(id).get();

        model.addAttribute("empresa", empresa);
        model.addAttribute("isEditar", true);
        String auth = request.getUserPrincipal().getName();
        model.addAttribute("email", "Usuário: " + auth);

        for (RoleModel role : empresa.getRoles()) {
            if (role.getRole().equals(Role.ROLE_ADMIN)) {
                model.addAttribute("role", "ADMIN");
                break;
            } else if (role.getRole().equals(Role.ROLE_USER)) {
                model.addAttribute("role", "USER");
                break;
            }
        }

        return "clients/cadastroCliente";
    }

    @PostMapping(value = { "/cadastroCliente.html/save/{id}", "/cadastroCliente/save/{id}" })
    public String showCadastroClientByID(HttpServletRequest request, Model model,
            @ModelAttribute("empresa") AccontModel empresa, @PathVariable("id") String id,
            @RequestParam(value = "role") String role) {
        String auth = request.getUserPrincipal().getName();
        model.addAttribute("email", "Usuário: " + auth);
        model.addAttribute("empresa", empresa);
        empresa.setId(id);
        model.addAttribute("isEditar", true);
        model.addAttribute("erro", "");

        List<AccontModel> acconts = new ArrayList<AccontModel>();
        acconts.addAll(clientService.findAllByRoleModels(Role.ROLE_USER));
        acconts.addAll(clientService.findAllByRoleModels(Role.ROLE_ADMIN));

        if (clientService.saveEnterprise(empresa, true, role)) {
            if (acconts.toString() == "[]") {
                model.addAttribute("clientes", null);
            } else {
                model.addAttribute("clientes", acconts);
            }
            return "clients/gerenciarClientes";
        }
        return "clients/cadastroCliente";
    }

    @PostMapping(value = { "/cadastroCliente/save" })
    public String saveClient(HttpServletRequest request, Model model,
            @ModelAttribute("empresa") AccontModel empresa, @RequestParam(value = "role") String role) {
        empresa.setAtivo(true);
        String auth = request.getUserPrincipal().getName();
        model.addAttribute("email", "Usuário: " + auth);
        model.addAttribute("isEditar", true);

        List<AccontModel> acconts = new ArrayList<AccontModel>();
        acconts.addAll(clientService.findAllByRoleModels(Role.ROLE_USER));
        acconts.addAll(clientService.findAllByRoleModels(Role.ROLE_ADMIN));

        if (clientService.saveEnterprise(empresa, false, role)) {
            if (acconts.toString() == "[]") {
                model.addAttribute("clientes", null);
            } else {
                model.addAttribute("clientes", acconts);
            }
            return "clients/gerenciarClientes";
        }

        return "clients/cadastroCliente";
    }

    ///////////////////////////////////////////////////////////////////////////////////////////// ADMINISTRADOR

    @GetMapping(value = { "/cadastroAdministrador.html", "/cadastroAdministrador" })
    public String showCadastroAdm(HttpServletRequest request, Model model) {
        String auth = request.getUserPrincipal().getName();
        model.addAttribute("email", "Usuário: " + auth);
        AccontModel acc = new AccontModel();
        acc.setAtivo(true);
        model.addAttribute("empresa", acc);
        model.addAttribute("isEditar", false);

        return "clients/cadastroAdministrador";
    }

    @GetMapping(value = { "/cadastroAdministrador.html/{id}", "/cadastroAdministrador/{id}" })
    public String showCadastroAdmByID(HttpServletRequest request, Model model, @PathVariable("id") String id) {
        AccontModel empresa = clientService.findById(id).get();
        String auth = request.getUserPrincipal().getName();
        model.addAttribute("email", "Usuário: " + auth);
        model.addAttribute("empresa", empresa);
        model.addAttribute("isEditar", true);

        return "clients/cadastroAdministrador";
    }

    @PostMapping(value = { "/cadastroAdministrador.html/save/{id}", "/cadastroAdministrador/save/{id}" })
    public String showCadastroAdmByID(HttpServletRequest request, Model model,
            @ModelAttribute("empresa") AccontModel empresa, @PathVariable("id") String id) {
        String auth = request.getUserPrincipal().getName();
        model.addAttribute("email", "Usuário: " + auth);
        model.addAttribute("empresa", empresa);
        empresa.setId(id);
        model.addAttribute("isEditar", true);
        model.addAttribute("erro", "");

        List<AccontModel> acconts = new ArrayList<AccontModel>();
        acconts.addAll(clientService.findAllByRoleModels(Role.ROLE_USER));
        acconts.addAll(clientService.findAllByRoleModels(Role.ROLE_ADMIN));

        if (clientService.saveAdmin(empresa, true)) {
            if (acconts.toString() == "[]") {
                model.addAttribute("clientes", null);
            } else {
                model.addAttribute("clientes", acconts);
            }
            return "clients/gerenciarClientes";
        }
        return "clients/cadastroAdministrador";
    }

    @PostMapping(value = { "/cadastroAdministrador/save" })
    public String saveAdm(HttpServletRequest request, Model model,
            @ModelAttribute("empresa") AccontModel empresa) {
        empresa.setAtivo(true);
        String auth = request.getUserPrincipal().getName();
        model.addAttribute("email", "Usuário: " + auth);

        model.addAttribute("isEditar", true);

        List<AccontModel> acconts = new ArrayList<AccontModel>();
        acconts.addAll(clientService.findAllByRoleModels(Role.ROLE_USER));
        acconts.addAll(clientService.findAllByRoleModels(Role.ROLE_ADMIN));

        if (clientService.saveAdmin(empresa, false)) {
            if (acconts.toString() == "[]") {
                model.addAttribute("clientes", null);
            } else {
                model.addAttribute("clientes", acconts);
            }
            return "clients/cadastroAdministrador";
        }

        return "clients/cadastroAdministrador";
    }
}
