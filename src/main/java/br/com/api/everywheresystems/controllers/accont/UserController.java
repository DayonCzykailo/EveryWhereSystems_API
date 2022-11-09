package br.com.api.everywheresystems.controllers.accont;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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

    @GetMapping("/gerenciarUsuarios.html")
    public String showGerenciarUser(HttpServletRequest request) {
        return "user/gerenciarUsuarios";
    }

    @GetMapping(value = { "/cadastroUsuario.html", "/cadastroUsuario" })
    public String showCadastroUser(HttpServletRequest request, Model model) {
        model.addAttribute("usuario", new AccontDto());
        return "user/cadastroUsuario";
    }

    @PostMapping("/cadastroUsuario/save")
    public String save(HttpServletRequest request, Model model,
            @ModelAttribute("usuario") AccontDto accont) {

        System.out.println(usuarioService.saveAccont(accont));

        return "user/cadastroUsuario";
    }
}
