package br.com.api.everywheresystems.repositories;

import org.springframework.stereotype.Repository;

import br.com.api.everywheresystems.models.EmpresaModel;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface EmpresaRepository extends JpaRepository<EmpresaModel, String> {
    Optional<EmpresaModel> findById(String id);
    Optional<EmpresaModel> findByCnpj(String cnpj);
    
    
}
