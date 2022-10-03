package br.com.api.everywheresystems.repositories;

import org.springframework.stereotype.Repository;

import br.com.api.everywheresystems.models.RoleModel;
import br.com.api.everywheresystems.models.enums.Role;

import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface RolesRepository extends JpaRepository<RoleModel, String>{
    RoleModel findByRole(Role role);
}
