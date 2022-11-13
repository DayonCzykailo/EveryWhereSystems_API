package br.com.api.everywheresystems.controllers.accont;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.com.api.everywheresystems.dto.AccontDto;
import br.com.api.everywheresystems.models.AccontModel;
import br.com.api.everywheresystems.models.enums.Role;
import br.com.api.everywheresystems.services.AccontService;
import br.com.api.everywheresystems.services.EmpresaService;
import br.com.api.everywheresystems.services.ImageService;
import br.com.api.everywheresystems.services.RolesService;

@Controller
public class UserController {

    @Autowired
    final AccontService usuarioService;
    @Autowired
    final ImageService imageService;
    @Autowired
    final RolesService rolesService;
    @Autowired
    private final PasswordEncoder encoder;
    @Autowired
    final EmpresaService empresaService;

    public UserController(AccontService usuarioService, ImageService imageService, RolesService rolesService,
            PasswordEncoder encoder, EmpresaService empresaService) {
        this.usuarioService = usuarioService;
        this.imageService = imageService;
        this.rolesService = rolesService;
        this.encoder = encoder;
        this.empresaService = empresaService;
    }

    @GetMapping(value = { "/gerenciarUsuarios.html", "/gerenciarUsuarios" })
    public String showGerenciarUser(HttpServletRequest request, Model model) {
        model.addAttribute("usuarios", usuarioService.findAllByRoleModels(Role.ROLE_SUB_USER));
        return "user/gerenciarUsuarios";
    }

    // get Cadastro
    @GetMapping(value = { "/cadastroUsuario.html", "/cadastroUsuario" })
    public String showCadastroUser(HttpServletRequest request, Model model) {
        model.addAttribute("usuario", new AccontDto());
        return "user/cadastroUsuario";
    }

    @GetMapping(value = { "/cadastroUsuario.html/{id}", "/cadastroUsuario/{id}" })
    public String showCadastroUserById(HttpServletRequest request, Model model, @PathVariable("id") String id) {
        model.addAttribute("usuario", usuarioService.findById(id).get());
        return "user/cadastroUsuario";
    }

    // Post Cadastro
    @PostMapping(value = { "/cadastroUsuario/save", "/cadastroUsuario.html/save" })
    public String save(HttpServletRequest request, Model model,
            @ModelAttribute("usuario") AccontModel usuario) {

        System.out.println(usuario);
        // System.out.println(usuarioService.save(usuario));

        return "user/cadastroUsuario";
    }

    @PostMapping(value = { "/cadastroUsuario.html/save/{id}", "/cadastroUsuario/save/{id}" })
    public String saveByID(HttpServletRequest request, Model model,
            @ModelAttribute("usuario") AccontModel usuario, @PathVariable("id") String id) {
        System.out.println(id);// TODO
        model.addAttribute("usuario", usuarioService.findById(id).get());
        model.addAttribute("erro", "");

        System.out.println(usuario);

        // usuarioService.save(usuario);

        return "clients/cadastroCliente";
    }
}
