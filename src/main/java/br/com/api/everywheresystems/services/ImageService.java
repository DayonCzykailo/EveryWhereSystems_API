package br.com.api.everywheresystems.services;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import br.com.api.everywheresystems.models.ImageModel;
import br.com.api.everywheresystems.repositories.ImageRepository;

/**
 *
 * @author Dayon
 */
@Service
public class ImageService {

    @Autowired
    ImageRepository imageRepository;
    
    public ImageService(ImageRepository imageRepository) {
        this.imageRepository = imageRepository;
    }

    @Transactional
    public void delete(ImageModel imagem) {
        imageRepository.delete(imagem);
    }

    @Transactional
    public ImageModel save(ImageModel imagem) {
        return imageRepository.save(imagem);
    }

    public Page<ImageModel> findAll(Pageable pageable) {//nao sei se vai ter
        return imageRepository.findAll(pageable);
    }

    public Optional<ImageModel> findById(String id) {
        return imageRepository.findById(id);
    }
}


