package br.com.api.everywheresystems.util;

import java.time.LocalDateTime;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
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

    @Override
    public String toString() {
        if (!mensagem.isEmpty() && !erro.isEmpty() && !tipo.isEmpty()) {
            return "{\ntipo:\""+tipo+"\",\nmensagem:\""+mensagem+"\",\nerro:\""+erro+"\",\n hora:\""+horaErro+"\"\n}";
        }else if(!mensagem.isEmpty() && !tipo.isEmpty()){
            return "{\ntipo:\""+tipo+"\",\nmensagem:\""+mensagem+"\",\nhora:\""+horaErro+"\"\n}";
        }else if(!mensagem.isEmpty()){
            return "{\nmensagem:\""+mensagem+"\",\nhora:\""+horaErro+"\"\n}";
        }else if(!erro.isEmpty()){
            return "{\nerro:\""+erro+"\",\nhora:\""+horaErro+"\"\n}";
        }
        return "";
    }
}