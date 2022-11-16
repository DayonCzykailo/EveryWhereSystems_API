package br.com.api.everywheresystems.controllers.accont;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.com.api.everywheresystems.configs.security.PermissoesConfigs;
import br.com.api.everywheresystems.dto.AccontDto;
import br.com.api.everywheresystems.models.AccontModel;
import br.com.api.everywheresystems.models.FormModel;
import br.com.api.everywheresystems.models.enums.Role;
import br.com.api.everywheresystems.services.AccontService;
import br.com.api.everywheresystems.services.EmpresaService;
import br.com.api.everywheresystems.services.FormService;
import br.com.api.everywheresystems.services.ImageService;
import br.com.api.everywheresystems.services.RolesService;
import br.com.api.everywheresystems.util.Util;

@Controller
public class FormController {

    @Autowired
    final FormService formService;

    @Autowired
    final AccontService usuarioService;

    public FormController(FormService formService, AccontService usuarioService) {
        this.formService = formService;
        this.usuarioService = usuarioService;
    }

    @GetMapping(value = { "/gerenciarFormularios.html", "/gerenciarFormularios" })
    public String showGerenciarUser(HttpServletRequest request, Model model) {
        model.addAttribute("forms", formService.findAll());
        return "forms/gerenciarFormularios";
    }

    // get Cadastro
    @GetMapping(value = { "/formulario.html", "/formulario", "/formularios" })
    public String showCadastroUser(HttpServletRequest request, Model model) {
        model.addAttribute("form", new FormModel());
        return "forms/formulario";
    }

    @GetMapping(value = { "/formulario.html/{id}", "/formulario/{id}", "/formularios/{id}" })
    public String showCadastroUserById(HttpServletRequest request, Model model, @PathVariable("id") String id) {
        model.addAttribute("form", formService.findById(id).get());

        return "forms/formulario";
    }

    // Post Cadastro
    @PostMapping(value = { "/formulario/save", "/formulario.html/save", "/formularios/save" })
    public String save(HttpServletRequest request, Model model,
            @ModelAttribute("form") FormModel form) {
        final PermissoesConfigs user = (PermissoesConfigs) SecurityContextHolder.getContext().getAuthentication()
                .getPrincipal();

     //   form.setEmpresa(usuarioService.findByEmail(user.getUsername()).get().getEmpresa());

        model.addAttribute("form", form);
        System.out.println(formService.save(form));
        return "forms/formulario";
    }

    @PostMapping(value = { "/formulario.html/save/{id}", "/formulario/save/{id}", "/formularios/save/{id}" })
    public String saveByID(HttpServletRequest request, Model model,
            @ModelAttribute("form") FormModel form, @PathVariable("id") String id) {
        model.addAttribute("form", form);
        System.out.println(formService.save(form));

        return "forms/formulario";
    }
}
