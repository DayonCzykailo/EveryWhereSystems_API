package br.com.api.everywheresystems.services;

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

    public boolean gerarCompose(String compose) {
        try (FileWriter arq = new FileWriter("D:\\Projetos_\\Projeto_Integrador_\\everywheresystems\\Compose2.yml")) {
            try (PrintWriter gravarArq = new PrintWriter(arq)) {
                gravarArq.print(compose);
                arq.close();
                return true;
            }
        } catch (IOException e) {
            System.out.println("ERRO em gerar compose : " + e);
            return false;
        }

    }
}
