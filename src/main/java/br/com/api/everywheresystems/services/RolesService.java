package br.com.api.everywheresystems.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import br.com.api.everywheresystems.models.RoleModel;
import br.com.api.everywheresystems.models.enums.Role;
import br.com.api.everywheresystems.repositories.RolesRepository;

/**
 *
 * @author Dayon
 */
@Service
public class RolesService {

    @Autowired
    RolesRepository roleRepository;

    public RolesService(RolesRepository roleRepository) {
        this.roleRepository = roleRepository;
    }

    @Transactional
    public void delete(RoleModel role) {
        roleRepository.delete(role);
    }

    @Transactional
    public RoleModel save(RoleModel role) {
        return roleRepository.save(role);
    }

    public List<RoleModel> findAll() {
        return roleRepository.findAll();
    }

    public Optional<RoleModel> findById(String id) {
        return roleRepository.findById(id);
    }

    public RoleModel findByRole(Role role) {
        return roleRepository.findByRole(role);
    }

    public void gerarRoles() {
        List<RoleModel> roles = new ArrayList<>();

        roles.add(new RoleModel(Role.ROLE_ACCESS_DASH));
        roles.add(new RoleModel(Role.ROLE_ACCESS_MANAGE_DASH));

        roles.add(new RoleModel(Role.ROLE_ACCESS_CLIENTS));
        roles.add(new RoleModel(Role.ROLE_ACCESS_MANAGE_CLIENTS));
        roles.add(new RoleModel(Role.ROLE_ACCESS_REGISTER_CLIENTS));

        roles.add(new RoleModel(Role.ROLE_ACCESS_USERS));
        roles.add(new RoleModel(Role.ROLE_ACCESS_MANAGE_USERS));
        roles.add(new RoleModel(Role.ROLE_ACCESS_REGISTER_USERS));

        roles.add(new RoleModel(Role.ROLE_ACCESS_FORMS));
        roles.add(new RoleModel(Role.ROLE_ACCESS_MANAGE_FORMS));
        roles.add(new RoleModel(Role.ROLE_ACCESS_REGISTER_FORMS));

        roles.add(new RoleModel(Role.ROLE_ACCESS_DOCKER));
        roles.add(new RoleModel(Role.ROLE_ACCESS_MANAGE_DOCKER));
        roles.add(new RoleModel(Role.ROLE_ACCESS_REGISTER_DOCKER));

        roles.add(new RoleModel(Role.ROLE_USER));
        roles.add(new RoleModel(Role.ROLE_SUB_USER));
        roles.add(new RoleModel(Role.ROLE_ADMIN));

        for (RoleModel role : roles) {
            save(role);
        }

    }

}
