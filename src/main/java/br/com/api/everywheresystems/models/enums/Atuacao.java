package br.com.api.everywheresystems.models.enums;

public enum Atuacao {// todo,AINDA VER O QUE COLOCAR
    PROGRAMADOR("Programador"),
    COZINHEIRO("Cozinheiro"),
    PROFESSOR("Professor"),
    ATUACAO("Atuação");

    public String atuacao;

    Atuacao(String atuacao) {
        this.atuacao = atuacao;
    }
    public String getAtuacao(){
        return atuacao;
        }
}
