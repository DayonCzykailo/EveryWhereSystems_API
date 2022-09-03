package br.com.api.everywheresystems.controllers;

import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import br.com.api.everywheresystems.models.AccontModel;
import br.com.api.everywheresystems.models.ImageModel;
import br.com.api.everywheresystems.services.ImageService;
import br.com.api.everywheresystems.services.LoginService;
import br.com.api.everywheresystems.util.Erro;
import org.springframework.web.bind.annotation.PutMapping;

@RestController
@CrossOrigin(origins = "*", maxAge = 3600)
@RequestMapping("/image")
public class ImageController {

    final ImageService imageService;

    final LoginService loginService;

    public ImageController(LoginService loginService, ImageService imageService) {
        this.loginService = loginService;
        this.imageService = imageService;
    }

    @GetMapping // tirar funcoes de imagem daqui
    public ResponseEntity<Page<ImageModel>> getImage(
            @PageableDefault(page = 0, size = 10, sort = "id", direction = Sort.Direction.ASC) Pageable pageable) {
        return ResponseEntity.status(HttpStatus.OK).body(imageService.findAll(pageable));
    }

    @GetMapping("/{id}")
    public ResponseEntity<Object> getOneImage(@PathVariable(value = "id") String id) {
        Optional<ImageModel> ImageModelOptional = imageService.findById(id);
        if (!ImageModelOptional.isPresent()) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                    .body(new Erro("Imagem Não Encontrada", "Falta de Cadastro"));// TODO, padronizar mensagem
        }
        return ResponseEntity.status(HttpStatus.OK).body(ImageModelOptional.get());
    }

    @PutMapping("/{id}")
    public ResponseEntity<Object> putTrocarImagem(@PathVariable String id, @RequestParam String idImagem) {
        AccontModel accontModel = null;
        ImageModel imageModel = null;
        try {
             imageModel = imageService.findById(idImagem).get();
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                    .body(new Erro("Imagem Não Encontrada", "Falta de Cadastro"));
        }
        
        try {
             accontModel = loginService.findById(id).get();
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                    .body(new Erro("Conta Não Encontrada", "Falta de Cadastro"));
        }

        accontModel.setImagem(imageModel);
        
        return ResponseEntity.status(HttpStatus.CREATED).body(loginService.save(accontModel));
    }

    @PostMapping("/nova") // tirar funcoes de imagem daqui
    public ResponseEntity<Object> putPostImage(
            @RequestParam("formato") String formato,
            @RequestParam("descricao") String descricao,
            @RequestParam("imagem") MultipartFile imagem) {
        ImageModel imageModel = new ImageModel();

        try {
            imageModel.setFormato(formato);
            imageModel.setDescricao(descricao);
            imageModel.setImagem(imagem.getBytes());
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.valueOf(400))
                    .body(new Erro("Falha em pegar a imagem e setar em bits", e, "Imagem Inválida"));
        }

        return ResponseEntity.status(HttpStatus.CREATED).body(imageService.save(imageModel));
    }

}