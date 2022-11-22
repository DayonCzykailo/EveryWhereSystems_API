package br.com.api.everywheresystems.models;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Data
@Entity(name = "tb_fato_dados_sensores")
@Getter
@Setter
@NoArgsConstructor // construtor vazio
@ToString
public class FatoDadosSensoresModel {
    @Id
    @GenericGenerator(name = "generator", strategy = "uuid2")
    @GeneratedValue(generator = "generator")
    private String id;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Column(name = "date")
    private Date data;

    private long mac;

    private String local;

    private String cidade;

    private String painel;

    private long impacto;

    @OneToOne(cascade = CascadeType.ALL)
    private EmpresaModel empresa;
}