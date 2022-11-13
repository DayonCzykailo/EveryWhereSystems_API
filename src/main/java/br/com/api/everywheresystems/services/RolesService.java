package br.com.api.everywheresystems.services;

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

    public Page<RoleModel> findAll(Pageable pageable) {
        return roleRepository.findAll(pageable);
    }

    public Optional<RoleModel> findById(String id) {
        return roleRepository.findById(id);
    }

    public RoleModel findByRole(Role role) {
        return roleRepository.findByRole(role);
    }

}
