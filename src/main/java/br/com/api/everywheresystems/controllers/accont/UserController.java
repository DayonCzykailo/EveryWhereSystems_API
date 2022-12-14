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
import br.com.api.everywheresystems.dto.AccontDto;
import br.com.api.everywheresystems.models.AccontModel;
import br.com.api.everywheresystems.models.enums.Role;
import br.com.api.everywheresystems.services.AccontService;
import br.com.api.everywheresystems.services.EmpresaService;
import br.com.api.everywheresystems.services.ImageService;
import br.com.api.everywheresystems.services.RolesService;
import br.com.api.everywheresystems.util.Util;

@Controller
public class UserController {

    @Autowired
    final AccontService usuarioService;
    @Autowired
    final ImageService imageService;
    @Autowired
    final RolesService rolesService;
    @Autowired
    final EmpresaService empresaService;

    public UserController(AccontService usuarioService, ImageService imageService, RolesService rolesService,
            EmpresaService empresaService) {
        this.usuarioService = usuarioService;
        this.imageService = imageService;
        this.rolesService = rolesService;
        this.empresaService = empresaService;
    }

    @GetMapping(value = { "/gerenciarUsuarios.html", "/gerenciarUsuarios" })
    public String showGerenciarUser(HttpServletRequest request, Model model) {
        final PermissoesConfigs user = (PermissoesConfigs) SecurityContextHolder.getContext().getAuthentication()
                .getPrincipal();
        System.out.println(user.getAuthorities().toString());
        String auth = request.getUserPrincipal().getName();
        model.addAttribute("email", "Usu??rio: " + auth);

        model.addAttribute("usuarios", usuarioService.findByRoleAndEmpresa(Role.ROLE_SUB_USER,
                usuarioService.findByEmail(user.getUsername()).get().getEmpresa().getId()));

        return "user/gerenciarUsuarios";
    }

    // get Cadastro
    @GetMapping(value = { "/cadastroUsuario.html", "/cadastroUsuario" })
    public String showCadastroUser(HttpServletRequest request, Model model) {
        AccontDto accont = new AccontDto();
        model.addAttribute("erro", false);
        String auth = request.getUserPrincipal().getName();
        model.addAttribute("email", "Usu??rio: " + auth);
        accont.setAtivo(true);
        model.addAttribute("usuario", accont);
        return "user/cadastroUsuario";
    }

    @GetMapping(value = { "/cadastroUsuario.html/{id}", "/cadastroUsuario/{id}" })
    public String showCadastroUserById(HttpServletRequest request, Model model, @PathVariable("id") String id) {
        model.addAttribute("usuario", new AccontDto(usuarioService.findById(id).get()));
        String auth = request.getUserPrincipal().getName();
        model.addAttribute("email", "Usu??rio: " + auth);
        model.addAttribute("erro", false);

        return "user/cadastroUsuario";
    }

    // Post Cadastro
    @PostMapping(value = { "/cadastroUsuario/save", "/cadastroUsuario.html/save" })
    public String save(HttpServletRequest request, Model model,
            @ModelAttribute("usuario") AccontDto usuario) {
        final PermissoesConfigs user = (PermissoesConfigs) SecurityContextHolder.getContext().getAuthentication()
                .getPrincipal();
        String auth = request.getUserPrincipal().getName();
        model.addAttribute("email", "Usu??rio: " + auth);

        AccontModel accont = usuario.toAccontModel(empresaService, rolesService);
        accont.setUltimoAcesso(Util.getDataHoraAgora());
        accont.setEmpresa(usuarioService.findByEmail(user.getUsername()).get().getEmpresa());
        accont.setSenha(usuarioService.encode(accont.getSenha()));
        if (usuario.getAtuacao().isEmpty()) {
            accont.setAtuacao("SEM ATUA????O");
        }
        System.out.println(usuario);
        if (!usuario.isAccessRegisterForms() && !usuario.isAccessRegisterUser() && !usuario.isAccessDash()) {
            model.addAttribute("erro", true);

            return "user/cadastroUsuario";
        }
        try {
            usuarioService.save(accont);
        } catch (Exception e) {
            return "user/cadastroUsuario";
        }
        model.addAttribute("usuarios", usuarioService.findByRoleAndEmpresa(Role.ROLE_SUB_USER,
                usuarioService.findByEmail(user.getUsername()).get().getEmpresa().getId()));

        return "user/gerenciarUsuarios";
    }

    @PostMapping(value = { "/cadastroUsuario.html/save/{id}", "/cadastroUsuario/save/{id}" })
    public String saveByID(HttpServletRequest request, Model model,
            @ModelAttribute("usuario") AccontDto usuario, @PathVariable("id") String id) {
        final PermissoesConfigs user = (PermissoesConfigs) SecurityContextHolder.getContext().getAuthentication()
                .getPrincipal();
        model.addAttribute("usuario", new AccontDto(usuarioService.findById(id).get()));
        String auth = request.getUserPrincipal().getName();
        model.addAttribute("email", "Usu??rio: " + auth);

        AccontModel accont = usuario.toAccontModel(empresaService, rolesService);
        accont.setUltimoAcesso(Util.getDataHoraAgora());
        accont.setEmpresa(usuarioService.findById(id).get().getEmpresa());
        accont.setSenha(usuarioService.encode(accont.getSenha()));

        if (usuario.getAtuacao().isEmpty()) {
            accont.setAtuacao("SEM ATUA????O");
        }

        if (!usuario.isAccessRegisterForms() && !usuario.isAccessRegisterUser() && !usuario.isAccessDash()) {
            model.addAttribute("erro", true);

            return "user/cadastroUsuario";
        }
        try {
            usuarioService.save(accont);
        } catch (Exception e) {
            return "user/cadastroUsuario";
        }
        model.addAttribute("usuarios", usuarioService.findByRoleAndEmpresa(Role.ROLE_SUB_USER,
                usuarioService.findByEmail(user.getUsername()).get().getEmpresa().getId()));

        return "user/cadastroUsuario";
    }
}
