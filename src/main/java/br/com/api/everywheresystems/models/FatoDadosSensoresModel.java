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

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

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
    @Column(name = "data")
    private Date data;

    private String mac;

    private String lugar;

    private String cidade;

    private String painel;

    private long impacto;
    
    @JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
    @OneToOne(cascade = CascadeType.ALL)
    private EmpresaModel empresa;
}