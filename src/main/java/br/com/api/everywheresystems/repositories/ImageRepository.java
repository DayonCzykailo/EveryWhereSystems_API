package  br.com.api.everywheresystems.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.api.everywheresystems.models.ImageModel;

/**
 *
 * @author Dayon
 */

@Repository
public interface ImageRepository extends JpaRepository<ImageModel, String>{//Acesso ao banco de dados, JpaRepository já tem metodos CRUD
//Regras de negocio

}
