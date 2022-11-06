package br.com.api.everywheresystems.services;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import br.com.api.everywheresystems.dto.AccontDto;
import br.com.api.everywheresystems.models.AccontModel;
import br.com.api.everywheresystems.models.RoleModel;
import br.com.api.everywheresystems.models.enums.Ativo;
import br.com.api.everywheresystems.models.enums.Atuacao;
import br.com.api.everywheresystems.models.enums.Role;
import br.com.api.everywheresystems.repositories.AccontRepository;
import br.com.api.everywheresystems.util.Erro;
import br.com.api.everywheresystems.util.Util;

/**
 *
 * @author Dayon
 */
@Service
public class AccontService {

    @Autowired
    final AccontRepository usuarioService;

    public AccontService(AccontRepository usuarioService) {
        this.usuarioService = usuarioService;

    }

    @Transactional
    public void delete(AccontModel accont) {
        usuarioService.delete(accont);
    }

    @Transactional
    public AccontModel save(AccontModel accont) {
        return usuarioService.save(accont);
    }

    public Page<AccontModel> findAll(Pageable pageable) {// nao sei se vai ter
        return usuarioService.findAll(pageable);
    }

    public List<AccontModel> findAll() {
        return usuarioService.findAll();
    }

    public Optional<AccontModel> findById(String id) {
        return usuarioService.findById(id);
    }

    public Optional<AccontModel> findByEmail(String email) {
        return usuarioService.findByEmail(email);
    }

    public boolean existsByCelular(String celular) {
        return usuarioService.existsByCelular(celular);
    }

    public boolean existsByEmail(String email) {
        return usuarioService.existsByEmail(email);
    }

    public ResponseEntity<Object> saveAccont(AccontDto accontDto, ImageService imageService, RolesService rolesService,
            PasswordEncoder encoder, EmpresaService empresaService) {
        AccontModel accontModel = new AccontModel();

        if (existsByCelular(accontDto.getCelular())) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body("ERRO : Celular já cadastrado");
        }

        if (existsByEmail(accontDto.getEmail())) {
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
            accontModel.setAtivo(Ativo.ATIVO);

            if (accontDto.getIdImagem() != null) {
                if (!imageService.findById(accontDto.getIdImagem()).isEmpty()) {
                    accontModel.setImagem(imageService.findById(accontDto.getIdImagem()).get());
                }
            }

        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                    .body("ERRO : Dados recebidos com erro : " + e.getMessage());
        }

        try {
            if (accontDto.getEmpresa() != null) {
                accontModel.setEmpresa(empresaService.findById(accontDto.getEmpresa()).get());
            }
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                    .body("ERRO : não foi possível cadastrar empresa  : " + e.getMessage());
        }

        accontModel.setRoles(rolesForUser(accontDto, rolesService));
        return ResponseEntity.status(HttpStatus.OK).body(accontModel);
        // return ResponseEntity.status(HttpStatus.OK).body(save(accontModel));
    }

    public List<RoleModel> rolesForUser(AccontDto accont, RolesService rolesService) {
        List<RoleModel> lista = new ArrayList<RoleModel>();

        if (accont.getRoleAcess() == null) {
            lista.add(rolesService.findByRole(Role.ROLE_SUB_USER));
        }else if (accont.getRoleAcess().equals("USER")) {
            lista.add(rolesService.findByRole(Role.ROLE_USER));
        }else if (accont.getRoleAcess().equals("ADMIN")) {
            lista.add(rolesService.findByRole(Role.ROLE_ADMIN));
        }

        if (accont.isAccessDash()) {
            lista.add(rolesService.findByRole(Role.ROLE_ACCESS_DASH));
        }
        if (accont.isAccessManageDash()) {
            lista.add(rolesService.findByRole(Role.ROLE_ACCESS_MANAGE_DASH));
        }

        if (accont.isAccessDocker()) {
            lista.add(rolesService.findByRole(Role.ROLE_ACCESS_DOCKER));
        }
        if (accont.isAccessManageDocker()) {
            lista.add(rolesService.findByRole(Role.ROLE_ACCESS_MANAGE_DOCKER));
        }
        if (accont.isAccessManageDocker()) {
            lista.add(rolesService.findByRole(Role.ROLE_ACCESS_MANAGE_DOCKER));
        }

        if (accont.isAccessForms()) {
            lista.add(rolesService.findByRole(Role.ROLE_ACCESS_FORMS));
        }
        if (accont.isAccessManageForms()) {
            lista.add(rolesService.findByRole(Role.ROLE_ACCESS_MANAGE_FORMS));
        }
        if (accont.isAccessRegisterForms()) {
            lista.add(rolesService.findByRole(Role.ROLE_ACCESS_REGISTER_FORMS));
        }

        if (accont.isAccessManageUser()) {
            lista.add(rolesService.findByRole(Role.ROLE_ACCESS_MANAGE_USERS));
        }
        if (accont.isAccessRegisterUser()) {
            lista.add(rolesService.findByRole(Role.ROLE_ACCESS_REGISTER_USERS));
        }
        if (accont.isAccessUsers()) {
            lista.add(rolesService.findByRole(Role.ROLE_ACCESS_USERS));
        }

        if (accont.isAccessClients()) {
            lista.add(rolesService.findByRole(Role.ROLE_ACCESS_CLIENTS));
        }
        if (accont.isAccessManageClients()) {
            lista.add(rolesService.findByRole(Role.ROLE_ACCESS_MANAGE_CLIENTS));
        }
        if (accont.isAccessRegisterClients()) {
            lista.add(rolesService.findByRole(Role.ROLE_ACCESS_MANAGE_CLIENTS));
        }

        return lista;
    }
}
