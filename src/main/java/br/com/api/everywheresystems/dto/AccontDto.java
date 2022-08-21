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
    private String email;

    @Size(max = 20)
    @NotBlank
    private String senha;

    private String atuacao;

    @Size(max = 13)
    private String celular;

    // private int nivel_acesso// ainda ver se vai ser int
    private String idImagem;//UUID2
}
