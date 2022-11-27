package br.com.api.everywheresystems.services;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import br.com.api.everywheresystems.models.EmpresaModel;
import br.com.api.everywheresystems.repositories.EmpresaRepository;

/**
 *
 * @author Dayon
 */
@Service
public class EmpresaService {

    @Autowired
    EmpresaRepository empresaRepository;

    public EmpresaService(EmpresaRepository empresaRepository) {
        this.empresaRepository = empresaRepository;
    }

    @Transactional
    public void delete(EmpresaModel empresa) {
        empresaRepository.delete(empresa);
    }

    @Transactional
    public EmpresaModel save(EmpresaModel empresa) {
        return empresaRepository.save(empresa);
    }

    public List<EmpresaModel> findAll() {// nao sei se vai ter
        return empresaRepository.findAll();
    }

    public Optional<EmpresaModel> findById(String id) {
        return empresaRepository.findById(id);
    }

    public Optional<EmpresaModel> findByCnpj(String cpnj) {
        return empresaRepository.findByCnpj(cpnj);
    }

    public boolean existsByCnpj(String cpnj) {
        return empresaRepository.existsByCnpj(cpnj);
    }
}
