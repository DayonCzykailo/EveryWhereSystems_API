package br.com.api.everywheresystems.util;

import java.time.LocalDateTime;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Erro {
    private String tipo;
    private String mensagem;
    private String erro;
    private LocalDateTime horaErro;

    public Erro(String mensagem, Exception erro, String tipo) {
        this.tipo = tipo;
        this.mensagem = mensagem;
        this.erro = erro.getMessage();
        this.horaErro = Util.getDataHoraAgora();
    }

    public Erro(String mensagem, String tipo) {
        this.tipo = tipo;
        this.mensagem = mensagem;
        this.erro = "";
        this.horaErro = Util.getDataHoraAgora();
    }

    public Erro(String mensagem) {
        this.tipo = "";
        this.mensagem = mensagem;
        this.erro = "";
        this.horaErro = Util.getDataHoraAgora();
    }
    
    public Erro() {
        this.tipo = "Desconhecido";
        this.mensagem = "Ops ... Ocorreu algum erro desconhecido";
        this.erro = "";
        this.horaErro = Util.getDataHoraAgora();
    }

    public Erro(Exception erro) {
        this.tipo = "Desconhecido";
        this.mensagem = "Ops ... Ocorreu algum erro desconhecido";
        this.erro = erro.getMessage();
        this.horaErro = Util.getDataHoraAgora();
    }
}