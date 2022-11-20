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

    // AccontModel(id=null, nome=null, email=empresa@email.com, senha=senha,
    // atuacao=null, celular=null, ativo=false,
    // roles=null, empresa=EmpresaModel(id=null, cnpj=11.473.536/0001-40,
    // nomeRazaoSocial=razao, nomeFantasia=empresa, email=null),
    // ultimoAcesso=null, imagem=null)
    public boolean saveEnterprise(AccontModel empresa) {

        empresa.setNome(empresa.getEmpresa().getNomeRazaoSocial());
        empresa.setAtuacao("EMPRESA");
        empresa.setRoles(Arrays.asList(rolesService.findByRole(Role.ROLE_USER)));
        empresa.setUltimoAcesso(Util.getDataHoraAgora());

        System.out.println("EMPRESA");
        System.out.println(empresa.toString());
        System.out.println("-----");

        /*
         * if (empresaService.existsByCnpj(empresa.getEmpresa().getCnpj())
         * || !Util.validarString(empresa.getEmpresa().getCnpj())) {
         * System.out.println("erro1");
         * return false;
         * }
         * 
         * if (existsByEmail(empresa.getEmail()) ||
         * (!Util.validarString(empresa.getEmail()))) {
         * System.out.println("erro2");
         * return false;
         * }
         * if (!Util.validarString(empresa.getSenha())) {
         * System.out.println("erro3");
         * return false;
         * }
         * if (!Util.validarString(empresa.getEmpresa().getNomeRazaoSocial())) {
         * System.out.println("erro4");
         * return false;
         * }
         */
        try {
            empresa.setSenha(encoder.encode(empresa.getSenha()));
        } catch (Exception e) {
            System.out.println("erro5");
            return false;
        }

        /*
         * if (empresa.getEmpresa() == null || empresa.getEmpresa().getCnpj().isBlank())
         * {
         * System.out.println("erro6");
         * return false;
         * }
         * 
         * if (empresa.getRoles().isEmpty() || empresa.getRoles().size() == 0) {
         * System.out.println("erro7");
         * return false;
         * }
         */
        empresa.getEmpresa().setCnpj(Util.unformated(empresa.getEmpresa().getCnpj()));
        System.out.println(save(empresa).toString());
        return true;
    }
    /*
     * public String putEnterprise(EnterpriseDto empresa) {
     * EmpresaModel empresaModel = new EmpresaModel();
     * AccontModel accont = new AccontModel();
     * 
     * if (!(accont.get().getEmail().equals(empresa.getEmail()))
     * && !(accont.get().getEmpresa().getCnpj().equals(empresa.getCnpj()))) {
     * 
     * if (existsByEmail(empresa.getEmail()) &&
     * empresaService.existsByCnpj(empresa.getCnpj())) {
     * if (!(usuarioService.countByEmail(accont.get().getEmail()) < 2)) {
     * return "E-mail já utilizado";
     * }
     * if (!(usuarioService.countByCnpj(accont.get().getEmpresa().getCnpj()) < 2)) {
     * return "E-mail já utilizado";
     * }
     * }
     * }
     * 
     * if (empresaService.existsByCnpj(empresa.getCnpj())) {
     * return "CNPJ já existente";
     * }
     * 
     * if (existsByEmail(empresa.getEmail())) {
     * return "E-mail já existente";
     * }
     * 
     * try {
     * BeanUtils.copyProperties(empresa, empresaModel);
     * } catch (Exception e) {
     * return "Falha em converter os dados";
     * }
     * 
     * try {
     * if (empresaService.existsByCnpj(empresaModel.getCnpj())) {
     * accont.setEmpresa(empresaService.findByCnpj(empresaModel.getCnpj()).get());
     * } else {
     * accont.setEmpresa(empresaModel);
     * 
     * }
     * } catch (Exception e) {
     * return "Falha em salvar a empresa";
     * }
     * 
     * if (empresa.getSenha() == null || empresa.getSenha().isBlank()) {
     * return "Senha Vazio";
     * }
     * 
     * try {
     * accont.setSenha(encoder.encode(empresa.getSenha()));
     * } catch (Exception e) {
     * return "Falha em gerar senha";
     * }
     * 
     * try {
     * accont.setNome(empresa.getNomeFantasia());
     * accont.setEmail(empresaModel.getEmail());
     * accont.setAtuacao("Empresa");
     * accont.setUltimoAcesso(Util.getDataHoraAgora());
     * accont.setAtivo(Ativo.ATIVO);
     * } catch (Exception e) {
     * return "Falha em gerar usuário";
     * }
     * 
     * try {
     * accont.setRoles(Arrays.asList(rolesService.findByRole(Role.ROLE_USER)));
     * } catch (Exception e) {
     * return "Não Foi possível gerar a autorização do usuário";
     * }
     * 
     * if (accont.getEmail() == null || accont.getEmail().isBlank()) {
     * return "EMAIL Vazio";
     * }
     * 
     * if (accont.getNome() == null || accont.getNome().isBlank()) {
     * return "NOME Vazio";
     * }
     * 
     * if (accont.getEmpresa() == null || accont.getEmpresa().getCnpj().isBlank()) {
     * return "Empresa Vazio";
     * }
     * 
     * if (accont.getRoles().isEmpty() || accont.getRoles().size() < 1) {
     * return "Regras Vazio";
     * }
     * 
     * try {
     * save(accont);
     * } catch (Exception e) {
     * return "Não foi possivel salvar o usuário";
     * }
     * 
     * return "SUCESSO";
     * }
     */

}
