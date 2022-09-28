package br.com.api.everywheresystems.models;

import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;

import org.hibernate.annotations.GenericGenerator;

import com.fasterxml.jackson.annotation.JsonIgnore;

import br.com.api.everywheresystems.models.enums.Ativo;
import br.com.api.everywheresystems.models.enums.Atuacao;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Data
@Entity(name = "tb_accont")
@Getter
@Setter
@NoArgsConstructor//construtor vazio
@ToString
public class AccontModel {
    @Id
    @GenericGenerator(name = "generator", strategy = "uuid2")
    @GeneratedValue(generator = "generator")
    private String id;

    @Column(nullable = false, unique = true, length = 100)
    private String email;

    @Column(nullable = false)
    private String senha;

    @Enumerated(EnumType.STRING)
    @Column
    private Atuacao atuacao;

    @Column(length = 13, unique = true)
    private String celular;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private Ativo ativo;

    @ManyToMany(fetch = FetchType.EAGER,
    cascade = {
        CascadeType.PERSIST,
        CascadeType.MERGE
    })
    @JoinTable(
      name = "tb_role_accont", 
      joinColumns = @JoinColumn(name = "tb_accont_id"), 
      inverseJoinColumns = @JoinColumn(name = "tb_role_id"))
    private List<RoleModel> roles;


    @OneToOne(cascade = CascadeType.ALL, orphanRemoval = true, optional = true)
    @JsonIgnore
    private EmpresaModel empresa;
    
    @Column(nullable = false)
    private LocalDateTime ultimoAcesso;

    @OneToOne(cascade = CascadeType.ALL, orphanRemoval = true, optional = true)
    private ImageModel imagem;

}

/*>>>Tabela Usuário (tbl_usuario)
id           | not null | bigint PK
email        | not null | varchar(100)
senha        | not null | varchar(100)  //MD5 provavelmente
atuacao      |   null   | varchar(100)  //Enum
celular      |   null   | varchar(13)   //55+ 41 9 1234-5678
ativo        | not null | bool
nivel_acesso | not null | int           //Hirearquia
ultimo_acesso| not null | DateTime      // mm-dd-aaaa hh:mm
id_empresa   | not null | bigint FK
id_imagem    |   null   | bigint FK     //ver como guardar
id_endereco  |   null   | bigint FK     //ainda a rever a nescessidade

>>>Tabela Empresa (tbl_empresa)
id               | not null | bigint PK
cnpj             | not null | varchar(14)
nome_razao_social| not null | varchar(100)
nome_fantasia    |   null   | varchar(100)
email            | not null | varchar(100)


>>>Tabela Endereço (tbl_endereco)

 cep        | not null |varchar(8)
 logradouro | not null |varchar(100)
 numero     | not null |int
 complemento|   null   |varchar(100)
 bairro     | not null |varchar(100)
 localidade | not null |varchar(100)
 estado     | not null |varchar(2) */
