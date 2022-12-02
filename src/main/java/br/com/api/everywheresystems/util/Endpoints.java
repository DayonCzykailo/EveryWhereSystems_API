package br.com.api.everywheresystems.util;

import java.util.Arrays;
import java.util.List;

public class Endpoints {
    // Sem autorização
    public static final String auth = "/auth";
    public static final String authInit = "/auth/init";// temporario, apenas cria uma conta master se o banco estiver
                                                       // vazio //NAO USAR

    // Gerar autorização
    public static final List<String> authAutorization = Arrays.asList(// url que nao precisa de autorização ou estar
                                                                      // logado
            "/auth**", "/auth/**", "/", "webjars",
            "/css/**", "/npm/**", "/assets/**", "/bootstrap-icons-1.9.1/**",
            "/index.html", "/index", "/status", "/**/favicon.ico", "/politicas.html", "/politicas");

    // criar conta
    public static final String createAccontAdmin = "/conta/criar/admin";
    public static final String createAccontUser = "/conta/criar/user";
    public static final String createAccontSubUser = "/conta/criar/subuser";
    // Ativar / Desativar Conta
    public static final String accontDisable = "/conta/desativar";
    public static final String accontEnable = "/conta/ativar";// todo, não implementado

    // Empresa
    public static final String enterpriseCreate = "/conta/empresa/criar";
    public static final String findEnterprise = "conta/buscar/empresa";

    // Imagem
    public static final String imagefindAll = "/image";
    public static final String imageCreate = "/image";
    public static final String imagefindById = "/image/{id}";

}
