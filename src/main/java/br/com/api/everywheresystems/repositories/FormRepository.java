package br.com.api.everywheresystems.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.api.everywheresystems.models.EmpresaModel;
import br.com.api.everywheresystems.models.FormModel;

/**
 *
 * @author Dayon
 */

@Repository
public interface FormRepository extends JpaRepository<FormModel, String> {
    List<FormModel> findByEmpresa(EmpresaModel empresa);
}
