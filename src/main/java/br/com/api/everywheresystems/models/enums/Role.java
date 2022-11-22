package br.com.api.everywheresystems.models.enums;

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
        ROLE_ACCESS_REGISTER_CLIENTS,
        ROLE_ACCESS_REGISTER_DOCKER,
        ROLE_ACCESS_REGISTER_FORMS;

        String role;

        Role() {
this.role = "ROLE";
        }

        Role(String role) {
         this.role = role;
        }
}
