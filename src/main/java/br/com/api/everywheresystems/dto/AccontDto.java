package br.com.api.everywheresystems.dto;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import br.com.api.everywheresystems.models.AccontModel;
import br.com.api.everywheresystems.models.RoleModel;
import br.com.api.everywheresystems.models.enums.Role;
import br.com.api.everywheresystems.services.EmpresaService;
import br.com.api.everywheresystems.services.RolesService;
import br.com.api.everywheresystems.util.Util;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class AccontDto {

    private String id;
    @Size(max = 100)
    private String nome;

    @Size(max = 100)
    private String email;

    @NotBlank
    private String senha;

    private String atuacao;

    @Size(max = 14)
    private String celular;

    private String empresa;

    private boolean isAtivo;

    // private int nivel_acesso// ainda ver se vai ser int
    private String idImagem;// UUID2

    // ROLES - CHATA DEMAIS
    private String roleAcess = "ROLE_SUB_USER";

    private boolean accessDash = false;
    private boolean accessManageDash = false;

    private boolean accessDocker = false;
    private boolean accessManageDocker = false;
    private boolean accessResgisterDocker = false;

    private boolean accessForms = false;
    private boolean accessManageForms = false;
    private boolean accessRegisterForms = false;

    private boolean accessUsers = false;
    private boolean accessManageUser = false;
    private boolean accessRegisterUser = false;

    private boolean accessClients = false;
    private boolean accessManageClients = false;
    private boolean accessRegisterClients = false;

    public AccontModel toAccontModel(EmpresaService empresaService, RolesService rolesService) {
        AccontModel accont = new AccontModel();
        accont.setAtuacao(atuacao);
        accont.setId(id);
        accont.setNome(nome);
        accont.setEmail(email);
        accont.setSenha(senha);

        accont.setCelular(Util.unformated(celular));
        try {
            if (!empresaService.findByCnpj(Util.unformated(empresa)).isEmpty()) {
                accont.setEmpresa(empresaService.findByCnpj(Util.unformated(empresa)).get());
            }
        } catch (Exception e) {
        }

        accont.setAtivo(isAtivo);
        accont.setRoles(getRolesModels(rolesService));

        return accont;
    }

    public List<RoleModel> getRolesModels(RolesService rolesService) {
        List<RoleModel> roles = new ArrayList<RoleModel>();

        for (Role role : getRolesAccess()) {
            roles.add(rolesService.findByRole(role));
        }

        return roles;
    }

    public List<Role> getRolesAccess() {
        List<Role> roles = new ArrayList<Role>();

        try {
            roles.add(Util.getStringParaEnum(Role.class, roleAcess));
        } catch (Exception e) {
            System.out.println("getRolesAccess");
        }

        // DASH
        if (accessDash) {
            roles.add(Role.ROLE_ACCESS_DASH);
        }
        if (accessManageDash) {
            roles.add(Role.ROLE_ACCESS_MANAGE_DASH);
        }
        // DOCKER
        if (accessManageDocker) {
            roles.add(Role.ROLE_ACCESS_MANAGE_DOCKER);
        }
        if (accessResgisterDocker) {
            roles.add(Role.ROLE_ACCESS_REGISTER_DOCKER);
        }
        if (accessDocker) {
            roles.add(Role.ROLE_ACCESS_DASH);
        }
        // FORMS
        if (accessForms) {
            roles.add(Role.ROLE_ACCESS_FORMS);
        }
        if (accessManageForms) {
            roles.add(Role.ROLE_ACCESS_MANAGE_FORMS);
        }
        if (accessRegisterForms) {
            roles.add(Role.ROLE_ACCESS_REGISTER_FORMS);
        }
        // USERS
        if (accessUsers) {
            roles.add(Role.ROLE_ACCESS_USERS);
        }
        if (accessManageUser) {
            roles.add(Role.ROLE_ACCESS_MANAGE_USERS);
        }
        if (accessRegisterUser) {
            roles.add(Role.ROLE_ACCESS_REGISTER_USERS);
        }
        // CLIENTS
        if (accessClients) {
            roles.add(Role.ROLE_ACCESS_CLIENTS);
        }
        if (accessManageClients) {
            roles.add(Role.ROLE_ACCESS_MANAGE_CLIENTS);
        }
        if (accessRegisterClients) {
            roles.add(Role.ROLE_ACCESS_REGISTER_CLIENTS);
        }

        return roles;
    }

    public AccontDto(AccontModel accont) {
        this.id = accont.getId();
        this.nome = accont.getNome();
        this.email = accont.getEmail();
        this.atuacao = accont.getAtuacao();
        this.senha = accont.getSenha();
        this.celular = accont.getCelular();
        this.empresa = accont.getEmpresa().getCnpj();
        this.isAtivo = accont.isAtivo();

        for (RoleModel a : accont.getRoles()) {
            if (a.getRole().equals(Role.ROLE_ADMIN)) {
                roleAcess = "ROLE_ADMIN";
            } else if (a.getRole().equals(Role.ROLE_USER)) {
                roleAcess = "ROLE_USER";
            }
            // DASH
            if (a.getRole().equals(Role.ROLE_ACCESS_DASH)) {
                accessDash = true;
            }
            if (a.getRole().equals(Role.ROLE_ACCESS_MANAGE_DASH)) {
                accessManageDash = true;
            }
            // DOCKER
            if (a.getRole().equals(Role.ROLE_ACCESS_MANAGE_DOCKER)) {
                accessManageDocker = true;
            }
            if (a.getRole().equals(Role.ROLE_ACCESS_REGISTER_DOCKER)) {
                accessResgisterDocker = true;
            }
            if (a.getRole().equals(Role.ROLE_ACCESS_DASH)) {
                accessDocker = true;
            }
            // FORMS
            if (a.getRole().equals(Role.ROLE_ACCESS_FORMS)) {
                accessForms = true;
            }
            if (a.getRole().equals(Role.ROLE_ACCESS_MANAGE_FORMS)) {
                accessManageForms = true;
            }
            if (a.getRole().equals(Role.ROLE_ACCESS_REGISTER_FORMS)) {
                accessRegisterForms = true;
            }
            // USERS
            if (a.getRole().equals(Role.ROLE_ACCESS_USERS)) {
                accessUsers = true;
            }
            if (a.getRole().equals(Role.ROLE_ACCESS_MANAGE_USERS)) {
                accessManageUser = true;
            }
            if (a.getRole().equals(Role.ROLE_ACCESS_REGISTER_USERS)) {
                accessRegisterUser = true;
            }
            // CLIENTS
            if (a.getRole().equals(Role.ROLE_ACCESS_CLIENTS)) {
                accessClients = true;
            }
            if (a.getRole().equals(Role.ROLE_ACCESS_MANAGE_CLIENTS)) {
                accessManageClients = true;
            }
            if (a.getRole().equals(Role.ROLE_ACCESS_REGISTER_CLIENTS)) {
                accessRegisterClients = true;
            }

            System.out.println(this);
        }
    }

}
