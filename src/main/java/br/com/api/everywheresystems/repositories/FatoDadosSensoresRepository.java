package br.com.api.everywheresystems.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.api.everywheresystems.models.EmpresaModel;
import br.com.api.everywheresystems.models.FatoDadosSensoresModel;

/**
 *
 * @author Dayon
 */

@Repository
public interface FatoDadosSensoresRepository extends JpaRepository<FatoDadosSensoresModel, String> {
    List<FatoDadosSensoresModel> findByEmpresaOrderByDataAsc(EmpresaModel empresa);
}
