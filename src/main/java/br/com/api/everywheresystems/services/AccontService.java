package br.com.api.everywheresystems.services;

import java.util.ArrayList;
import java.util.Arrays;
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
import br.com.api.everywheresystems.models.EmpresaModel;
import br.com.api.everywheresystems.models.RoleModel;
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
    @Autowired
    final ImageService imageService;
    @Autowired
    final RolesService rolesService;
    @Autowired
    private final PasswordEncoder encoder;
    @Autowired
    final EmpresaService empresaService;

    public AccontService(AccontRepository usuarioService, ImageService imageService, RolesService rolesService,
            PasswordEncoder encoder, EmpresaService empresaService) {
        this.usuarioService = usuarioService;
        this.imageService = imageService;
        this.rolesService = rolesService;
        this.encoder = encoder;
        this.empresaService = empresaService;
    }

    public PasswordEncoder getEncoder() {
        return encoder;
    }

    @Transactional
    public void delete(AccontModel accont) {
        usuarioService.delete(accont);
    }

    @Transactional
    public AccontModel save(AccontModel accont) {
        return usuarioService.save(accont);
    }

    public String encode(String senha) {
        return encoder.encode(senha);
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

    public List<AccontModel> findAllByRoleModels(Role role) {
        return usuarioService.findByRole(role.toString());
    }

    public List<AccontModel> findByRoleAndEmpresa(Role role, String empresaId) {
        return usuarioService.findByRoleAndEmpresa(role.toString(), empresaId);
    }

    public List<AccontModel> findAllByEmpresa(EmpresaModel empresa) {
        return usuarioService.findByEmpresa(empresa);
    }

    public ResponseEntity<Object> saveAccont(AccontDto accontDto) {
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
            accontModel.setAtivo(true);

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
        } else if (accont.getRoleAcess().equals("USER")) {
            lista.add(rolesService.findByRole(Role.ROLE_USER));
        } else if (accont.getRoleAcess().equals("ADMIN")) {
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

    public boolean saveEnterprise(AccontModel empresa, boolean isEdit) {

        empresa.setNome(empresa.getEmpresa().getNomeRazaoSocial());
        empresa.setAtuacao("EMPRESA");
        empresa.setRoles(Arrays.asList(rolesService.findByRole(Role.ROLE_USER)));
        empresa.setUltimoAcesso(Util.getDataHoraAgora());

        System.out.println("EMPRESA");
        System.out.println(empresa.toString());
        System.out.println("-----");
        if ((empresa.getId() == null || empresa.getId().isEmpty())) {
            if (empresaService.existsByCnpj(empresa.getEmpresa().getCnpj())
                    || !Util.validarString(empresa.getEmpresa().getCnpj())) {
                System.out.println("erro1");
                return false;
            }
        }
        if ((empresa.getId() == null || empresa.getId().isEmpty())) {
            if (existsByEmail(empresa.getEmail()) || (!Util.validarString(empresa.getEmail()))) {
                System.out.println("erro2");
                return false;
            }
        }
        if (!(empresa.getId() == null || empresa.getId().isEmpty())) {
            empresa.setSenha(usuarioService.findById(empresa.getId()).get().getSenha());
        }

        if (!Util.validarString(empresa.getSenha())) {
            System.out.println("erro3");
            return false;
        }
        if (!Util.validarString(empresa.getEmpresa().getNomeRazaoSocial())) {
            System.out.println("erro4");
            return false;
        }

        try {
            if (!isEdit) {
                empresa.setSenha(encoder.encode(empresa.getSenha()));
            } else {
                empresa.setSenha(findById(empresa.getId()).get().getSenha());
            }
        } catch (Exception e) {
            System.out.println("erro5");
            return false;
        }

        if (empresa.getEmpresa() == null || empresa.getEmpresa().getCnpj().isBlank()) {
            System.out.println("erro6");
            return false;
        }

        if (empresa.getRoles().isEmpty() || empresa.getRoles().size() == 0) {
            System.out.println("erro7");
            return false;
        }

        empresa.getEmpresa().setCnpj(Util.unformated(empresa.getEmpresa().getCnpj()));

        System.out.println(save(empresa).toString());
        return true;
    }

    private EmpresaModel gerarEmpresa() {
        EmpresaModel empresa = new EmpresaModel();
        empresa.setCnpj("75167467000120");
        empresa.setNomeFantasia("EWA");
        empresa.setNomeRazaoSocial("EveryWhere Analytics");

        return empresaService.save(empresa);
    }

    public void gerarAdmin() {
        AccontModel accont = new AccontModel();
        accont.setAtivo(true);
        accont.setAtuacao("ADMINISTRADOR");
        accont.setEmail("adm@email.com");
        accont.setNome("Administrador");
        accont.setRoles(Arrays.asList(rolesService.save(rolesService.findByRole(Role.ROLE_ADMIN))));
        accont.setUltimoAcesso(Util.getDataHoraAgora());
        accont.setSenha(encode("senha"));
        accont.setEmpresa(gerarEmpresa());

        save(accont);
    }

}
