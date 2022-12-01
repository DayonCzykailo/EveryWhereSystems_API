package br.com.api.everywheresystems.repositories;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import br.com.api.everywheresystems.models.AccontModel;
import br.com.api.everywheresystems.models.EmpresaModel;

/**
 *
 * @author Dayon
 */

@Repository
public interface AccontRepository extends JpaRepository<AccontModel, String> {
    // Regras de negocio
    boolean existsByCelularAndAtivoTrue(String celular);

    boolean existsByEmailAndAtivoTrue(String email);
    //
    /// select * from tb_accont where tb_accont.id in
    // (select tb_accont_id from tb_role_accont where tb_role_id =
    // '8e7c4d32-8499-4f06-ac1b-7b48afe9e58a')

    @Query(value = "select * from tb_accont where ativo = 1 and tb_accont.id in (select tb_accont_id from tb_role_accont role where tb_role_id = (select tb_role.id from tb_role where tb_role.role = :role))", nativeQuery = true)
    List<AccontModel> findByRole(@Param("role") String role);

    // select * from tb_accont where tb_accont.id in
    // (select tb_accont_id from tb_role_accont where tb_role_id =
    // '8e7c4d32-8499-4f06-ac1b-7b48afe9e58a')
    // and tb_accont.empresa_id = '48797f87-724c-4f06-88fc-1bef9af398d5';
    @Query(value = "select * from tb_accont where ativo = 1 and  tb_accont.id in (select tb_accont_id from tb_role_accont role where tb_role_id = (select tb_role.id from tb_role where tb_role.role = :role)) and tb_accont.empresa_id = :empresaId", nativeQuery = true)
    List<AccontModel> findByRoleAndEmpresa(@Param("role") String role, @Param("empresaId") String empresaId);

    // SELECT tb_accont.* from tb_accont where tb_accont.empresa_id like
    // '48797f87-724c-4f06-88fc-1bef9af398d5';
    List<AccontModel> findByEmpresa(EmpresaModel empresa);

    Optional<AccontModel> findByEmailAndAtivoTrue(String email);

    List<AccontModel> findAllByAtivoTrue();
}
