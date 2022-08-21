package  br.com.api.everywheresystems.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import br.com.api.everywheresystems.models.AccontModel;

/**
 *
 * @author Dayon
 */

@Repository
public interface LoginRepository extends JpaRepository<AccontModel, String>{
    //Regras de negocio
    boolean existsByCelular(String celular);
    boolean existsByEmail(String email);
}
