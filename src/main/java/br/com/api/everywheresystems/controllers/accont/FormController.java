package br.com.api.everywheresystems.controllers.accont;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.com.api.everywheresystems.configs.security.PermissoesConfigs;
import br.com.api.everywheresystems.models.FormModel;
import br.com.api.everywheresystems.models.RoleModel;
import br.com.api.everywheresystems.models.enums.Role;
import br.com.api.everywheresystems.services.AccontService;
import br.com.api.everywheresystems.services.FormService;

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
    public String showGerenciarForm(HttpServletRequest request, Model model) {
        final PermissoesConfigs user = (PermissoesConfigs) SecurityContextHolder.getContext().getAuthentication()
                .getPrincipal();
        String auth = request.getUserPrincipal().getName();
        model.addAttribute("email", "Usuário: " + auth);

        for (RoleModel role : user.getAuthorities()) {
            if (role.getRole().equals(Role.ROLE_ADMIN)) {
                model.addAttribute("forms", formService.findAll());
                break;
            } else if (role.getRole().equals(Role.ROLE_USER) || role.getRole().equals(Role.ROLE_SUB_USER)) {
                model.addAttribute("forms",
                        formService.findByEmpresa(usuarioService.findByEmail(user.getUsername()).get().getEmpresa()));

                break;
            }
        }

        return "forms/gerenciarFormularios";
    }

    // get Cadastro
    @GetMapping(value = { "/formulario.html", "/formulario", "/formularios" })
    public String showCadastroForm(HttpServletRequest request, Model model) {
        model.addAttribute("form", new FormModel());
        String auth = request.getUserPrincipal().getName();
        model.addAttribute("email", "Usuário: " + auth);
        return "forms/formulario";
    }

    @GetMapping(value = { "/formulario.html/{id}", "/formulario/{id}", "/formularios/{id}" })
    public String showCadastroFormById(HttpServletRequest request, Model model, @PathVariable("id") String id) {
        model.addAttribute("form", formService.findById(id).get());
        String auth = request.getUserPrincipal().getName();
        model.addAttribute("email", "Usuário: " + auth);

        return "forms/formulario";
    }

    // Post Cadastro
    @PostMapping(value = { "/formulario/save", "/formulario.html/save", "/formularios/save" })
    public String save(HttpServletRequest request, Model model,
            @ModelAttribute("form") FormModel form) {
        String auth = request.getUserPrincipal().getName();
        model.addAttribute("email", "Usuário: " + auth);
        final PermissoesConfigs user = (PermissoesConfigs) SecurityContextHolder.getContext().getAuthentication()
                .getPrincipal();

        form.setEmpresa(usuarioService.findByEmail(user.getUsername()).get().getEmpresa());

        model.addAttribute("form", form);

        if ((formService.save(form)) != null) {
            for (RoleModel role : user.getAuthorities()) {
                if (role.getRole().equals(Role.ROLE_ADMIN)) {
                    model.addAttribute("forms", formService.findAll());
                    break;
                } else if (role.getRole().equals(Role.ROLE_USER) || role.getRole().equals(Role.ROLE_SUB_USER)) {
                    model.addAttribute("forms",
                            formService
                                    .findByEmpresa(usuarioService.findByEmail(user.getUsername()).get().getEmpresa()));

                    break;
                }
            }
            return "forms/gerenciarFormularios";
        }
        return "forms/formulario";
    }

    @PostMapping(value = { "/formulario.html/save/{id}", "/formulario/save/{id}", "/formularios/save/{id}" })
    public String saveByID(HttpServletRequest request, Model model,
            @ModelAttribute("form") FormModel form, @PathVariable("id") String id) {
        String auth = request.getUserPrincipal().getName();
        model.addAttribute("email", "Usuário: " + auth);
        model.addAttribute("form", form);
        final PermissoesConfigs user = (PermissoesConfigs) SecurityContextHolder.getContext().getAuthentication()
                .getPrincipal();

        if ((formService.save(form)) != null) {
            for (RoleModel role : user.getAuthorities()) {
                if (role.getRole().equals(Role.ROLE_ADMIN)) {
                    model.addAttribute("forms", formService.findAll());
                    break;
                } else if (role.getRole().equals(Role.ROLE_USER) || role.getRole().equals(Role.ROLE_SUB_USER)) {
                    model.addAttribute("forms",
                            formService
                                    .findByEmpresa(usuarioService.findByEmail(user.getUsername()).get().getEmpresa()));

                    break;
                }
            }
            return "forms/gerenciarFormularios";
        }

        return "forms/formulario";
    }
}
