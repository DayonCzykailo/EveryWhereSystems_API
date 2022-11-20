package br.com.api.everywheresystems.models;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
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
@Entity(name = "tb_form")
@Getter
@Setter
@NoArgsConstructor
@ToString
public class FormModel {
    @Id
    @GenericGenerator(name = "generator", strategy = "uuid2")
    @GeneratedValue(generator = "generator")
    private String id;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Column(name = "date")
    private Date date;

    private String numeroSensor;

    private String enderecoLocalSensor;
    private String cidadeLocalSensor;
    private String estadoLocalSensor;

    private String enderecoExibicaoSensor;

    private String codigoInternoPainel;
    private String tipoPainel;

    @OneToOne(cascade = CascadeType.ALL)
    private EmpresaModel empresa;
}
