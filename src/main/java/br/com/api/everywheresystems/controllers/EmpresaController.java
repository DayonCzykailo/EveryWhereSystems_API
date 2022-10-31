package br.com.api.everywheresystems.controllers;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import br.com.api.everywheresystems.models.EmpresaModel;
import br.com.api.everywheresystems.services.EmpresaService;
import br.com.api.everywheresystems.services.AccontService;
import br.com.api.everywheresystems.services.RolesService;
import br.com.api.everywheresystems.util.Endpoints;
import br.com.api.everywheresystems.util.Erro;

@RestController
@CrossOrigin(origins = "*", maxAge = 3600)
public class EmpresaController {

    @Autowired
    final AccontService loginService;
    @Autowired
    final RolesService rolesService;
    @Autowired
    final EmpresaService empresaService;

    public EmpresaController(AccontService loginService, EmpresaService empresaService, RolesService rolesService) {
        this.loginService = loginService;
        this.empresaService = empresaService;
        this.rolesService = rolesService;
    }

    @PostMapping(path = Endpoints.enterpriseCreate)
    public ResponseEntity<Object> cadastroEmpresa(@RequestBody EmpresaModel empresaModel) {

        Optional<EmpresaModel> empresa = empresaService.findByCnpj(empresaModel.getCnpj());

        if (empresa.isEmpty()) {
            return ResponseEntity.status(HttpStatus.OK).body(empresaService.save(empresaModel));
        }
        return ResponseEntity.status(HttpStatus.CONFLICT)
                .body(new Erro("Cnpj já utilizado", "Empresa já existente."));
    }

    @PostMapping(path = Endpoints.findEnterprise)
    public ResponseEntity<Object> buscarEmpresa(@RequestParam String cnpj) {
        try {
            return ResponseEntity.status(HttpStatus.OK).body(empresaService.findByCnpj(cnpj));
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body(new Erro("Erro interno", "Erro"));
        }
    }

}
