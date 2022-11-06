package br.com.api.everywheresystems.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class AccontDto {
    @Size(max = 100)
    private String nome;

    @Size(max = 100)
    private String email;

    @Size(max = 20)
    @NotBlank
    private String senha;

    private String atuacao;

    @Size(max = 13)
    private String celular;

    private String empresa;

    private boolean isAtivo;

    // private int nivel_acesso// ainda ver se vai ser int
    private String idImagem;// UUID2

    // ROLES - CHATA DEMAIS
    private String roleAcess;

    private boolean accessDash;
    private boolean accessManageDash;

    private boolean accessDocker;
    private boolean accessManageDocker;
    private boolean accessResgisterDocker;

    private boolean accessForms; 
    private boolean accessManageForms;
    private boolean accessRegisterForms;

    private boolean accessUsers;
    private boolean accessManageUser;
    private boolean accessRegisterUser;

    private boolean accessClients;
    private boolean accessManageClients;
    private boolean accessRegisterClients;

}
