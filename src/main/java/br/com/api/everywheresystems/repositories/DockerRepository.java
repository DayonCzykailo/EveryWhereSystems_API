package  br.com.api.everywheresystems.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.api.everywheresystems.models.DockerModel;
import br.com.api.everywheresystems.models.ImageModel;

/**
 *
 * @author Dayon
 */

@Repository
public interface DockerRepository extends JpaRepository<DockerModel, String>{
}
