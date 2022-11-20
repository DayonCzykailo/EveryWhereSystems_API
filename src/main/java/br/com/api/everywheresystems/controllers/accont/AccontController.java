package br.com.api.everywheresystems.controllers.accont;

import java.util.Arrays;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import br.com.api.everywheresystems.models.AccontModel;
import br.com.api.everywheresystems.models.RoleModel;
import br.com.api.everywheresystems.models.enums.Role;
import br.com.api.everywheresystems.services.AccontService;
import br.com.api.everywheresystems.services.EmpresaService;
import br.com.api.everywheresystems.services.ImageService;
import br.com.api.everywheresystems.services.RolesService;
import br.com.api.everywheresystems.util.Endpoints;
import br.com.api.everywheresystems.util.Erro;
import br.com.api.everywheresystems.util.Util;

@RestController
@CrossOrigin(origins = "*", maxAge = 3600)
public class AccontController {

    @Autowired
    final AccontService accontService;
    @Autowired
    final ImageService imageService;
    @Autowired
    final RolesService rolesService;
    @Autowired
    private final PasswordEncoder encoder;
    @Autowired
    final EmpresaService empresaService;

    public AccontController(AccontService loginService, ImageService imageService, RolesService rolesService,
            PasswordEncoder encoder, EmpresaService empresaService) {
        this.accontService = loginService;
        this.imageService = imageService;
        this.rolesService = rolesService;
        this.encoder = encoder;
        this.empresaService = empresaService;
    }

    @PostMapping(path = "/auth/login/entrar")
    public ResponseEntity<Object> singIn(@RequestParam String email, @RequestParam String senha) {
        System.out.println(email);
        System.out.println(senha);
        System.out.println("_______");

        Optional<AccontModel> accont = accontService.findByEmail(email);

        if (!accont.isEmpty() && encoder.matches(senha.trim(), accont.get().getSenha())) {
            return ResponseEntity.status(HttpStatus.OK).body(accont);

        }

        return ResponseEntity.status(HttpStatus.UNAUTHORIZED)
                .body(new Erro("Não Autorizado : E-mail e/ou Senha incorretos.", "Não Autorizado"));
    }
    /*
     * @PostMapping(value = Endpoints.createAccontAdmin)
     * public ResponseEntity<Object> postACriarContaUser(@RequestBody AccontDto
     * accontDto) {
     * return accontService.saveAccont(accontDto, encoder, imageService,
     * empresaService, rolesService, Role.ROLE_USER);
     * }
     * 
     * @PostMapping(value = Endpoints.createAccontUser)
     * public ResponseEntity<Object> postCriarContaAdmin(@RequestBody AccontDto
     * accontDto) {
     * return accontService.saveAccont(accontDto, encoder, imageService,
     * empresaService, rolesService,
     * Role.ROLE_ADMIN);
     * }
     * 
     * @PostMapping(value = Endpoints.createAccontSubUser)
     * public ResponseEntity<Object> postCriarContaSubUser(@RequestBody AccontDto
     * accontDto) {
     * return accontService.saveAccont(accontDto, encoder, imageService,
     * empresaService, rolesService,
     * Role.ROLE_SUB_USER);
     * }
     */

    @PutMapping(value = Endpoints.accontDisable)
    public ResponseEntity<Object> putDesativarConta(@RequestParam String id) {
        AccontModel accont = null;
        try {
            accont = accontService.findById(id).get();
            accont.setAtivo(true);
            return ResponseEntity.status(HttpStatus.CREATED).body(accontService.save(accont));
        } catch (Exception e) {
            if (accont == null) {
                return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                        .body(new Erro("Conta não registrada", "Falta Cadastro"));
            }
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(new Erro(e));
        }
    }

    @PostMapping(value = Endpoints.authInit)
    public ResponseEntity<Object> postCriarContaInit() {
        AccontModel accontModel = new AccontModel();

        if (!accontService.findAll().isEmpty()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body("já iniciando");
        }

        accontModel.setEmail("MASTER");
        accontModel.setSenha("MASTER");
        accontModel.setUltimoAcesso(Util.getDataHoraAgora());
        accontModel.setAtuacao("Atuacao.ATUACAO");
        accontModel.setAtivo(true);

        accontModel.setRoles(Arrays.asList(new RoleModel(Role.ROLE_ADMIN)));

        return ResponseEntity.status(HttpStatus.OK).body(accontService.save(accontModel));
    }

}
