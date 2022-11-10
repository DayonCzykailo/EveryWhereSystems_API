package br.com.api.everywheresystems.controllers.accont;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.server.PathParam;

import org.apache.tomcat.jni.Error;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.com.api.everywheresystems.configs.security.PermissoesConfigs;
import br.com.api.everywheresystems.dto.AccontDto;
import br.com.api.everywheresystems.dto.EnterpriseDto;
import br.com.api.everywheresystems.models.AccontModel;
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

        List<AccontModel> listaCliente = clientService.findAll();
        System.out.println(listaCliente);
        model.addAttribute("clientes", listaCliente);

        return "clients/gerenciarClientes";
    }

    @GetMapping(value = { "/cadastroCliente.html", "/cadastroCliente" })
    public String showCadastroClient(HttpServletRequest request, Model model) {
        model.addAttribute("empresa", new AccontModel());
        model.addAttribute("erro", "");
        return "clients/cadastroCliente";
    }

    @PostMapping("/cadastroCliente/save")
    public String saveClient(HttpServletRequest request, Model model,
            @ModelAttribute("empresa") AccontModel empresa) {
        empresa.getEmpresa()
                .setCnpj("123");
        System.out.println(empresa.toString());
        // clientService.save(empresa);

        return "clients/cadastroCliente";
    }

}
