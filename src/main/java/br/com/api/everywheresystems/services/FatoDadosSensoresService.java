package br.com.api.everywheresystems.services;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import br.com.api.everywheresystems.models.EmpresaModel;
import br.com.api.everywheresystems.models.FatoDadosSensoresModel;
import br.com.api.everywheresystems.repositories.FatoDadosSensoresRepository;

/**
 *
 * @author Dayon
 */
@Service
public class FatoDadosSensoresService {

    @Autowired
    private final FatoDadosSensoresRepository sensorService;

    public FatoDadosSensoresService(FatoDadosSensoresRepository sensorService) {
        this.sensorService = sensorService;
    }

    @Transactional
    public void delete(FatoDadosSensoresModel model) {
        sensorService.delete(model);
    }

    @Transactional
    public FatoDadosSensoresModel save(FatoDadosSensoresModel model) {
        return sensorService.save(model);
    }

    public List<FatoDadosSensoresModel> findAll() {
        return sensorService.findAll();
    }

    public Optional<FatoDadosSensoresModel> findById(String id) {
        return sensorService.findById(id);
    }

    public List<FatoDadosSensoresModel> findByEmpresa(EmpresaModel model) {
        return sensorService.findByEmpresaOrderByDataAsc(model);
    }

}
