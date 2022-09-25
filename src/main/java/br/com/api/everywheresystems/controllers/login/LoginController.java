package br.com.api.everywheresystems.controllers.login;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


import br.com.api.everywheresystems.dto.AccontDto;
import br.com.api.everywheresystems.models.AccontModel;
import br.com.api.everywheresystems.models.RoleModel;
import br.com.api.everywheresystems.models.enums.Ativo;
import br.com.api.everywheresystems.models.enums.Atuacao;
import br.com.api.everywheresystems.models.enums.Role;
import br.com.api.everywheresystems.services.ImageService;
import br.com.api.everywheresystems.services.LoginService;
import br.com.api.everywheresystems.services.RolesService;
import br.com.api.everywheresystems.util.Erro;
import br.com.api.everywheresystems.util.Util;

@RestController
@CrossOrigin(origins = "*", maxAge = 3600)
public class LoginController {

    @Autowired
    final LoginService loginService;
    @Autowired
    final ImageService imageService;
    @Autowired
    final RolesService rolesService;
    @Autowired
    private final PasswordEncoder encoder;

    public LoginController(LoginService loginService, ImageService imageService, RolesService rolesService,
            PasswordEncoder encoder) {
        this.loginService = loginService;
        this.imageService = imageService;
        this.rolesService = rolesService;
        this.encoder = encoder;
    }

    @PostMapping(path = "/login/conta/entrar")
    public ResponseEntity<Object> singIn(@RequestParam String email, @RequestParam String senha) {

        System.out.println(email);
        Optional<AccontModel> accont = loginService.findByEmail(email);

        if (!accont.isEmpty() && encoder.matches(senha.trim(), accont.get().getSenha())) {
            return ResponseEntity.status(HttpStatus.OK).body(accont);

        }

        return ResponseEntity.status(HttpStatus.UNAUTHORIZED)
                .body(new Erro("Não Autorizado : E-mail e/ou Senha incorretos.", "Não Autorizado"));
    }

    @PostMapping(value = "/conta/criar/user")
    public ResponseEntity<Object> postAuthCriarConta(@RequestBody AccontDto accontDto) {
        AccontModel accontModel = new AccontModel();

        if (loginService.existsByCelular(accontDto.getCelular())) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body("ERRO : Celular já cadastrado");
        }
        if (loginService.existsByEmail(accontDto.getEmail())) {
            return ResponseEntity.status(HttpStatus.CONFLICT)
                    .body(new Erro("ERRO : E-mail já cadastrado", "Dado Em Uso"));
        }
        try {
            accontDto.setSenha(encoder.encode(accontDto.getSenha()));
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("ERRO : Dados não foi possivel criptografar sua senha : " + e.getMessage());
        }

        try {
            BeanUtils.copyProperties(accontDto, accontModel);

            accontModel.setUltimoAcesso(Util.getDataHoraAgora());
            accontModel.setAtuacao(Util.getStringParaEnum(Atuacao.class, accontDto.getAtuacao()));
            accontModel.setAtivo(Ativo.ATIVO);

            if (!imageService.findById(accontDto.getIdImagem()).isEmpty()) {
                accontModel.setImagem(imageService.findById(accontDto.getIdImagem()).get());
            }

        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                    .body("ERRO : Dados recebidos com erro : " + e.getMessage());
        }

        accontModel.setRoles(Arrays.asList(rolesService.findByRole(Role.ROLE_USER)));

        return ResponseEntity.status(HttpStatus.OK).body(loginService.save(accontModel));
    }

    @PostMapping(value = "/conta/criar/admin")
    public ResponseEntity<Object> postCriarContaAdmin(@RequestBody AccontDto accontDto) {
        AccontModel accontModel = new AccontModel();

        if (loginService.existsByCelular(accontDto.getCelular())) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body("ERRO : Celular já cadastrado");
        }
        if (loginService.existsByEmail(accontDto.getEmail())) {
            return ResponseEntity.status(HttpStatus.CONFLICT)
                    .body(new Erro("ERRO : E-mail já cadastrado", "Dado Em Uso"));
        }
        try {
            accontDto.setSenha(encoder.encode(accontDto.getSenha()));
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("ERRO : Dados não foi possivel criptografar sua senha : " + e.getMessage());
        }

        try {
            BeanUtils.copyProperties(accontDto, accontModel);

            accontModel.setUltimoAcesso(Util.getDataHoraAgora());
            accontModel.setAtuacao(Util.getStringParaEnum(Atuacao.class, accontDto.getAtuacao()));
            accontModel.setAtivo(Ativo.ATIVO);

            if (!imageService.findById(accontDto.getIdImagem()).isEmpty()) {
                accontModel.setImagem(imageService.findById(accontDto.getIdImagem()).get());
            }

        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                    .body("ERRO : Dados recebidos com erro : " + e.getMessage());
        }

        accontModel.setRoles(Arrays.asList(new RoleModel(Role.ROLE_USER), new RoleModel(Role.ROLE_SUB_USER),
                new RoleModel(Role.ROLE_ADMIN)));

        return ResponseEntity.status(HttpStatus.OK).body(loginService.save(accontModel));
    }

    @PostMapping(value = "/conta/criar/subuser")
    public ResponseEntity<Object> postCriarContaSubUser(@RequestBody AccontDto accontDto) {
        AccontModel accontModel = new AccontModel();

        if (loginService.existsByCelular(accontDto.getCelular())) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body("ERRO : Celular já cadastrado");
        }
        if (loginService.existsByEmail(accontDto.getEmail())) {
            return ResponseEntity.status(HttpStatus.CONFLICT)
                    .body(new Erro("ERRO : E-mail já cadastrado", "Dado Em Uso"));
        }
        try {
            accontDto.setSenha(encoder.encode(accontDto.getSenha()));
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("ERRO : Dados não foi possivel criptografar sua senha : " + e.getMessage());
        }

        try {
            BeanUtils.copyProperties(accontDto, accontModel);

            accontModel.setUltimoAcesso(Util.getDataHoraAgora());
            accontModel.setAtuacao(Util.getStringParaEnum(Atuacao.class, accontDto.getAtuacao()));
            accontModel.setAtivo(Ativo.ATIVO);

            if (!imageService.findById(accontDto.getIdImagem()).isEmpty()) {
                accontModel.setImagem(imageService.findById(accontDto.getIdImagem()).get());
            }

        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                    .body("ERRO : Dados recebidos com erro : " + e.getMessage());
        }

        accontModel.setRoles(Arrays.asList(new RoleModel(Role.ROLE_SUB_USER), new RoleModel(Role.ROLE_USER)));

        return ResponseEntity.status(HttpStatus.OK).body(loginService.save(accontModel));
    }

    @PutMapping(value = "/login/conta/desativar")
    public ResponseEntity<Object> putDesativarConta(@RequestParam String id) {
        AccontModel accont = null;
        try {
            accont = loginService.findById(id).get();
            accont.setAtivo(Ativo.INATIVO);
            return ResponseEntity.status(HttpStatus.CREATED).body(loginService.save(accont));
        } catch (Exception e) {
            if (accont == null) {
                return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                        .body(new Erro("Conta não registrada", "Falta Cadastro"));
            }
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(new Erro(e));
        }
    }

    @PostMapping(value = "/auth/init")
    public ResponseEntity<Object> postCriarContaInit() {
        AccontModel accontModel = new AccontModel();

        if (!loginService.findAll().isEmpty()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body("já iniciando");
        }

        accontModel.setEmail("MASTER");
        accontModel.setSenha("MASTER");
        accontModel.setUltimoAcesso(Util.getDataHoraAgora());
        accontModel.setAtuacao(Atuacao.ATUACAO);
        accontModel.setAtivo(Ativo.ATIVO);

        accontModel.setRoles(Arrays.asList(new RoleModel(Role.ROLE_ADMIN)));

        return ResponseEntity.status(HttpStatus.OK).body(loginService.save(accontModel));
    }

}
