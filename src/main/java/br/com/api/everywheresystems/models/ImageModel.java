package br.com.api.everywheresystems.models;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToOne;

import org.hibernate.annotations.GenericGenerator;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity(name = "tb_image")
@Getter
@Setter
@NoArgsConstructor//construtor vazio
@ToString //@ToString(exclude="id") exclui o id
public class ImageModel {

    @Id
    @GenericGenerator(name = "generator", strategy = "uuid2", parameters = {})
    @GeneratedValue(generator = "generator")
    private String id;

    @Column(length = 100)
    private String descricao;

    @Lob
    @Column
    private byte[] imagem;

    @Column
    private String formato;

    @OneToOne(cascade = CascadeType.ALL, orphanRemoval = true, mappedBy = "imagem")
    private AccontModel accont;
}
