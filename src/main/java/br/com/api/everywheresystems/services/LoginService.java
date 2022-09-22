package br.com.api.everywheresystems.services;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import br.com.api.everywheresystems.models.AccontModel;
import br.com.api.everywheresystems.repositories.LoginRepository;

/**
 *
 * @author Dayon
 */
@Service
public class LoginService {

    @Autowired
    LoginRepository loginRepository;


    public LoginService(LoginRepository loginRepository) {
        this.loginRepository = loginRepository;
    }

    @Transactional
    public void delete(AccontModel accont) {
        loginRepository.delete(accont);
    }

    @Transactional
    public AccontModel save(AccontModel accont) {
        return loginRepository.save(accont);
    }

    public Page<AccontModel> findAll(Pageable pageable) {// nao sei se vai ter
        return loginRepository.findAll(pageable);
    }

    public Optional<AccontModel> findById(String id) {
        return loginRepository.findById(id);
    }
    public Optional<AccontModel> findByEmail(String email) {
        return loginRepository.findByEmail(email);
    }

    public boolean existsByCelular(String celular) {
        return loginRepository.existsByCelular(celular);
    }

    public boolean existsByEmail(String email) {
        return loginRepository.existsByEmail(email);
    }
}
