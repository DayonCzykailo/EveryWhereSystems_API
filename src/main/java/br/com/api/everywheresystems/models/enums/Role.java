package br.com.api.everywheresystems.models.enums;

import java.util.Arrays;
import java.util.List;

public enum Role {
        ROLE_ADMIN,
        ROLE_USER,
        ROLE_SUB_USER,
        // ACESSO AO
        ROLE_ACCESS_DASH,
        ROLE_ACCESS_DOCKER,
        ROLE_ACCESS_FORMS,
        ROLE_ACCESS_USERS,
        ROLE_ACCESS_CLIENTS,
        // ACESSO GERENCIAR AO
        ROLE_ACCESS_MANAGE_DASH,
        ROLE_ACCESS_MANAGE_DOCKER,
        ROLE_ACCESS_MANAGE_FORMS,
        ROLE_ACCESS_MANAGE_USERS,
        ROLE_ACCESS_MANAGE_CLIENTS,
        // ACESSO CADASTRAR AO
        ROLE_ACCESS_REGISTER_USERS,
        ROLE_ACCESS_REGISTER_CLIENTS;

        public static final List<String> listDash = Arrays.asList("ADMIN", "USER", "SUB_USER", "ACCESS_DASH");
        public static final List<String> listManageDash = Arrays.asList("ADMIN", "USER", "SUB_USER",
                        "ACCESS_MANAGE_DASH");

        public static final List<String> listDocker = Arrays.asList("ADMIN", "ACCESS_DOCKER");
        public static final List<String> listManageDocker = Arrays.asList("ADMIN", "ACCESS_MANAGE_DOCKER");

        public static final List<String> listForms = Arrays.asList("ADMIN", "SUB_USER", "USER", "ACCESS_FORMS");
        public static final List<String> listManageForms = Arrays.asList("ADMIN", "SUB_USER", "USER",
                        "ACCESS_MANAGE_FORMS");

        public static final List<String> listUsers = Arrays.asList("ADMIN", "USER", "ACCESS_USERS");
        public static final List<String> listManageUser = Arrays.asList("ADMIN", "USER", "ACCESS_MANAGE_USERS");
        public static final List<String> listRegisterUser = Arrays.asList("ADMIN", "USER", "ACCESS_REGISTER_USERS");

        public static final List<String> listClients = Arrays.asList("ADMIN", "ACCESS_CLIENTS");
        public static final List<String> listManageClients = Arrays.asList("ADMIN",  "ACCESS_MANAGE_CLIENTS");
        public static final List<String> listRegisterClients = Arrays.asList("ADMIN", "ACCESS_REGISTER_CLIENTS");

}
