package br.com.api.everywheresystems.controllers.accont;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.com.api.everywheresystems.configs.security.PermissoesConfigs;
import br.com.api.everywheresystems.dto.DockerDto;
import br.com.api.everywheresystems.models.DockerModel;
import br.com.api.everywheresystems.services.AccontService;
import br.com.api.everywheresystems.services.DockerService;
import br.com.api.everywheresystems.util.scripts.ShellScript;

@Controller
public class DockerController {

    @Autowired
    final DockerService dockerService;

    @Autowired
    final AccontService usuarioService;

    public DockerController(DockerService dockerService, AccontService usuarioService) {
        this.dockerService = dockerService;
        this.usuarioService = usuarioService;
    }

    @GetMapping(value = { "/gerenciarDocker.html", "/gerenciarDocker" })
    public String showGerenciarDocker(HttpServletRequest request, Model model) {

        model.addAttribute("container", ShellScript.executarShellScript("docker container ls -a"));
        return "docker/gerenciarDocker";
    }

    // get Cadastro
    @GetMapping(value = { "/docker.html", "/docker" })
    public String showCadastroDocker(HttpServletRequest request, Model model) {
        model.addAttribute("docker", new DockerDto());
        return "docker/docker";
    }

    @GetMapping(value = { "/docker.html/{name}", "/docker/{name}" })
    public String showCadastroDockerByname(HttpServletRequest request, Model model, @PathVariable("name") String name) {
        DockerDto docker = new DockerDto();

        // BeanUtils.copyProperties(dockerService.findByName(name).get(), docker);
        // System.out.println("======================================");
        docker.setName(name);

        docker.setCompose(ShellScript.executarShellScript("docker container ls"));

        docker.setLog(ShellScript.executarShellScript("docker container logs " + docker.getName()));

        docker.setStatus(ShellScript.executarShellScript("docker container ls -a"));

        model.addAttribute("docker", docker);
        // System.out.println(docker.toString());

        return "docker/docker";
    }

    // Post Cadastro
    @PostMapping(value = { "/docker/save", "/docker.html/save" })
    public String save(HttpServletRequest request, Model model,
            @ModelAttribute("docker") DockerDto dockerDto) {
        DockerModel docker = new DockerModel();

        dockerService.gerarCompose(dockerDto.getCompose());

        // docker compose -f Compose2.yml up -d
        System.out.println(dockerDto);
        System.out.println("DOCKER");
        System.out.println(ShellScript.executarShellScript(" docker compose -f Compose2.yml up -d"));

        model.addAttribute("Docker", docker);
        System.out.println(dockerService.save(docker));
        return "docker/docker";
    }

    @PostMapping(value = { "/docker.html/save/{name}", "/docker/save/{name}" })
    public String saveByName(HttpServletRequest request, Model model,
            @ModelAttribute("Docker") DockerModel docker, @PathVariable("name") String name) {
        model.addAttribute("Docker", docker);
        System.out.println(dockerService.save(docker));

        return "docker/docker";
    }
}