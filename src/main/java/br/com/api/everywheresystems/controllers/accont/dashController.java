package br.com.api.everywheresystems.controllers.accont;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import br.com.api.everywheresystems.configs.security.PermissoesConfigs;
import br.com.api.everywheresystems.models.FatoDadosSensoresModel;
import br.com.api.everywheresystems.services.AccontService;
import br.com.api.everywheresystems.services.EmpresaService;
import br.com.api.everywheresystems.services.FatoDadosSensoresService;

@Controller
public class DashController {
    @Autowired
    final FatoDadosSensoresService service;
    @Autowired
    final AccontService accontService;
    @Autowired
    final EmpresaService empresaService;

    public DashController(FatoDadosSensoresService service, AccontService accontService,
            EmpresaService empresaService) {
        this.service = service;
        this.accontService = accontService;
        this.empresaService = empresaService;
    }

    @GetMapping(value = { "/gerenciarDash.html", "/gerenciarDash" })
    public String showGerenciaDash(HttpServletRequest request, Model model) {

        if (service.findAll().toString() == "[]") {
            model.addAttribute("clientes", null);
        } else {
            model.addAttribute("clientes", empresaService.findAll());
        }

        return "dash/gerenciarDash";
    }

    @GetMapping(value = { "/dash.html", "/dash" })
    public String showDash(HttpServletRequest request, Model model) {
        final PermissoesConfigs usuario = (PermissoesConfigs) SecurityContextHolder.getContext().getAuthentication()
                .getPrincipal();// service.findByEmpresa(accontService.findByEmail(usuario.getUsername()).get().getEmpresa())

        List<FatoDadosSensoresModel> data = service
                .findByEmpresa(accontService.findByEmail(usuario.getUsername()).get().getEmpresa());
        // System.out.println(data);
        model.addAttribute("pieChartData",
                data);
        return "dash/dash";
    }

    @GetMapping(value = { "/dash.html/{id}", "/dash/{id}" })
    public String showDashByID(HttpServletRequest request, Model model, @PathVariable("id") String id) {

        // System.out.println(service.findByEmpresa(empresaService.findById(id).get()).size());
        model.addAttribute("pieChartData", service.findByEmpresa(empresaService.findById(id).get()));

        return "dash/dash";
    }

}
