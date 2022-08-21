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
public class ImageDto{

    @Size(max = 100)
    @NotBlank
    private String descricao;
    
    private byte[] imagem;

    @NotBlank
    private String formato;
}
