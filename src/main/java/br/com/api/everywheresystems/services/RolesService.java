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
    RolesRepository loginRepository;


    public RolesService(RolesRepository loginRepository) {
        this.loginRepository = loginRepository;
    }

    @Transactional
    public void delete(RoleModel role) {
        loginRepository.delete(role);
    }

    @Transactional
    public RoleModel save(RoleModel role) {
        return loginRepository.save(role);
    }

    public Page<RoleModel> findAll(Pageable pageable) {
        return loginRepository.findAll(pageable);
    }

    public Optional<RoleModel> findById(String id) {
        return loginRepository.findById(id);
    }
    public RoleModel findByRole(Role role) {
        return loginRepository.findByRole(role);
    }

}
