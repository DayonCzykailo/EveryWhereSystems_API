package br.com.api.everywheresystems.services;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import br.com.api.everywheresystems.dto.AccontDto;
import br.com.api.everywheresystems.dto.EnterpriseDto;
import br.com.api.everywheresystems.models.AccontModel;
import br.com.api.everywheresystems.models.EmpresaModel;
import br.com.api.everywheresystems.models.FatoDadosSensoresModel;
import br.com.api.everywheresystems.models.RoleModel;
import br.com.api.everywheresystems.models.enums.Ativo;
import br.com.api.everywheresystems.models.enums.Role;
import br.com.api.everywheresystems.repositories.AccontRepository;
import br.com.api.everywheresystems.repositories.FatoDadosSensoresRepository;
import br.com.api.everywheresystems.util.Erro;
import br.com.api.everywheresystems.util.Util;

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

    public Page<FatoDadosSensoresModel> findAll(Pageable pageable) {// nao sei se vai ter
        return sensorService.findAll(pageable);
    }

    public List<FatoDadosSensoresModel> findAll() {
        return sensorService.findAll();
    }

    public Optional<FatoDadosSensoresModel> findById(String id) {
        return sensorService.findById(id);
    }

}
