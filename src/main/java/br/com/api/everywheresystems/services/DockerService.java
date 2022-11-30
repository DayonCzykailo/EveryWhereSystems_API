package br.com.api.everywheresystems.services;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import br.com.api.everywheresystems.models.DockerModel;
import br.com.api.everywheresystems.repositories.DockerRepository;
import br.com.api.everywheresystems.util.scripts.ShellScript;

/**
 *
 * @author Dayon
 */
@Service
public class DockerService {

    @Autowired
    DockerRepository dockerRepository;

    public DockerService(DockerRepository dockerRepository) {
        this.dockerRepository = dockerRepository;
    }

    @Transactional
    public void delete(DockerModel docker) {
        dockerRepository.delete(docker);
    }

    @Transactional
    public DockerModel save(DockerModel docker) {
        return dockerRepository.save(docker);
    }

    public Page<DockerModel> findAll(Pageable pageable) {// nao sei se vai ter
        return dockerRepository.findAll(pageable);
    }

    public Optional<DockerModel> findById(String id) {
        return dockerRepository.findById(id);
    }

    public boolean gerarCompose(String nome, String image) {
        try {
            File theDir = new File("/composeFiles/" + nome);
            if (!theDir.exists()) {
                theDir.mkdirs();
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        try (FileWriter arq = new FileWriter("/composeFiles/" + nome + "/compose.txt")) {
            try (PrintWriter gravarArq = new PrintWriter(arq)) {
                String tamplate = String.format(
                        """
                                version: \"3.2\"
                                services:
                                    %s:
                                        container_name: %s
                                        image: %s
                                        restart: always
                                                        """, nome, nome, image);
                gravarArq.print(tamplate);
                arq.close();
                return true;
            }
        } catch (IOException e) {
            System.out.println("ERRO em gerar compose : " + e);

            return false;
        }

    }
}
