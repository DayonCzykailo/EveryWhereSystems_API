package br.com.api.everywheresystems.services;

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
import br.com.api.everywheresystems.models.AccontModel;
import br.com.api.everywheresystems.models.enums.Ativo;
import br.com.api.everywheresystems.models.enums.Atuacao;
import br.com.api.everywheresystems.models.enums.Role;
import br.com.api.everywheresystems.repositories.AccontRepository;
import br.com.api.everywheresystems.util.Erro;
import br.com.api.everywheresystems.util.Util;

/**
 *
 * @author Dayon
 */
@Service
public class AccontService {

    @Autowired
    AccontRepository loginRepository;

    public AccontService(AccontRepository loginRepository) {
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

    public List<AccontModel> findAll() {
        return loginRepository.findAll();
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

    public ResponseEntity<Object> saveAccont(AccontDto accontDto, PasswordEncoder encoder, ImageService imageService,
            EmpresaService empresaService, RolesService rolesService, Role role) {
        AccontModel accontModel = new AccontModel();

        if (existsByCelular(accontDto.getCelular())) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body("ERRO : Celular já cadastrado");
        }

        if (existsByEmail(accontDto.getEmail())) {
            return ResponseEntity.status(HttpStatus.CONFLICT)
                    .body(new Erro("ERRO : E-mail já cadastrado", "Dado Em Uso"));
        }
        try {
            accontDto.setSenha(encoder.encode(accontDto.getSenha()));
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("ERRO : Dados não foi possivel criptografar sua senha : " + e.getMessage());
        }

        try {
            BeanUtils.copyProperties(accontDto, accontModel);

            accontModel.setUltimoAcesso(Util.getDataHoraAgora());
            accontModel.setAtuacao(Util.getStringParaEnum(Atuacao.class, accontDto.getAtuacao()));
            accontModel.setAtivo(Ativo.ATIVO);

            if (!imageService.findById(accontDto.getIdImagem()).isEmpty()) {
                accontModel.setImagem(imageService.findById(accontDto.getIdImagem()).get());
            }

        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                    .body("ERRO : Dados recebidos com erro : " + e.getMessage());
        }

        try {
            accontModel.setEmpresa(empresaService.findById(accontDto.getEmpresa()).get());
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                    .body("ERRO : não foi possível cadastrar empresa  : " + e.getMessage());
        }

        accontModel.setRoles(Arrays.asList(rolesService.findByRole(role)));

        return ResponseEntity.status(HttpStatus.OK).body(save(accontModel));
    }
}
