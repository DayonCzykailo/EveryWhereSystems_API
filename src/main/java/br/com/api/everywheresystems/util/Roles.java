package br.com.api.everywheresystems.util;

import java.util.Arrays;
import java.util.List;

public class Roles {
        // DashBoards
        public static final List<String> listDash = Arrays.asList("ROLE_ADMIN", "ROLE_USER",
                        "ROLE_ACCESS_DASH",
                        "ROLE_ACCESS_MANAGE_DASH");
        public static final List<String> listManageDash = Arrays.asList("ROLE_ADMIN", "ROLE_ACCESS_MANAGE_DASH");
        // Dockers
        public static final List<String> listDocker = Arrays.asList("ROLE_ADMIN", "ROLE_ACCESS_DOCKER",
                        "ROLE_ACCESS_MANAGE_DOCKER", "ROLE_ACCESS_REGISTER_DOCKER");
        public static final List<String> listManageDocker = Arrays.asList("ROLE_ADMIN", "ROLE_ACCESS_MANAGE_DOCKER",
                        "ROLE_ACCESS_REGISTER_DOCKER");
        public static final List<String> listResgisterDocker = Arrays.asList("ROLE_ADMIN",
                        "ROLE_ACCESS_REGISTER_DOCKER");
        // Formularios
        public static final List<String> listForms = Arrays.asList("ROLE_ADMIN", "ROLE_USER",
                        "ROLE_ACCESS_FORMS",
                        "ROLE_ACCESS_MANAGE_FORMS", "ROLE_ACCESS_REGISTER_FORMS");
        public static final List<String> listManageForms = Arrays.asList("ROLE_ADMIN", "ROLE_SUB_USER", "ROLE_USER",
                        "ROLE_ACCESS_MANAGE_FORMS", "ROLE_ACCESS_REGISTER_FORMS");
        public static final List<String> listRegisterForms = Arrays.asList("ROLE_ADMIN", "ROLE_SUB_USER", "ROLE_USER",
                        "ROLE_ACCESS_REGISTER_FORMS");
        // Usuario
        public static final List<String> listUsers = Arrays.asList("ROLE_USER", "ROLE_ACCESS_USERS",
                        "ROLE_ACCESS_MANAGE_USERS", "ROLE_ACCESS_REGISTER_USERS");
        public static final List<String> listManageUser = Arrays.asList("ROLE_USER",
                        "ROLE_ACCESS_MANAGE_USERS",
                        "ROLE_ACCESS_REGISTER_USERS");
        public static final List<String> listRegisterUser = Arrays.asList("ROLE_USER",
                        "ROLE_ACCESS_REGISTER_USERS");
        // Clientes
        public static final List<String> listClients = Arrays.asList("ROLE_ADMIN", "ROLE_ACCESS_CLIENTS",
                        "ROLE_ACCESS_MANAGE_CLIENTS",
                        "ROLE_ACCESS_REGISTER_CLIENTS");
        public static final List<String> listManageClients = Arrays.asList("ROLE_ADMIN", "ROLE_ACCESS_MANAGE_CLIENTS",
                        "ROLE_ACCESS_REGISTER_CLIENTS");
        public static final List<String> listRegisterClients = Arrays.asList("ROLE_ADMIN",
                        "ROLE_ACCESS_REGISTER_CLIENTS");

}
