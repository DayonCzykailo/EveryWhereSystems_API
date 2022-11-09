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
public class EnterpriseDto {

    @Size(max = 14)
    @NotBlank
    private String cnpj;

    @Size(max = 100)
    @NotBlank
    private String nomeRazaoSocial;

    @Size(max = 100)
    private String nomeFantasia;

    @Size(max = 100)
    @NotBlank
    private String email;

    @Size(max = 20)
    @NotBlank
    private String senha;

    private boolean isAtivo;
}
