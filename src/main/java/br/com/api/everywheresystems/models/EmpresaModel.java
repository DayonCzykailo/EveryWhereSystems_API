package br.com.api.everywheresystems.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import org.hibernate.annotations.GenericGenerator;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity(name = "tb_empresa")
@Getter
@Setter
@NoArgsConstructor // construtor vazio
@ToString
public class EmpresaModel {
    @Id
    @GenericGenerator(name = "generator", strategy = "uuid2")
    @GeneratedValue(generator = "generator")
    private String id;

    @Column(nullable = false, length = 14)
    private String cnpj;

    @Column(nullable = false, length = 100)
    private String nomeRazaoSocial;

    @Column(length = 100)
    private String nomeFantasia;

   


}