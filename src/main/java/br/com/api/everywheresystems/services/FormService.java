package br.com.api.everywheresystems.services;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import br.com.api.everywheresystems.models.FormModel;
import br.com.api.everywheresystems.repositories.FormRepository;

/**
 *
 * @author Dayon
 */
@Service
public class FormService {

    @Autowired
    FormRepository formRepository;

    public FormService(FormRepository formRepository) {
        this.formRepository = formRepository;
    }

    @Transactional
    public void delete(FormModel imagem) {
        formRepository.delete(imagem);
    }

    @Transactional
    public FormModel save(FormModel imagem) {
        return formRepository.save(imagem);
    }

    public List<FormModel> findAll() {
        return formRepository.findAll();
    }

    public Optional<FormModel> findById(String id) {
        return formRepository.findById(id);
    }
}
