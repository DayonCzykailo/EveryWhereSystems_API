package br.com.api.everywheresystems.models;

import java.time.LocalDateTime;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Data
@Entity(name = "tb_docker")
@Getter
@Setter
@NoArgsConstructor // construtor vazio
@ToString
public class DockerModel {
    @Id
    @GenericGenerator(name = "generator", strategy = "uuid2")
    @GeneratedValue(generator = "generator")
    private String id;

    String name;
    String imagem;

    // String description;

    // @DateTimeFormat(pattern = "HH:mm")
    // LocalDateTime hour;
    //
    // boolean alwaysOn;
    // boolean onInSunday;
    // boolean onInMonday;
    // boolean onInTuesday;
    // boolean onInWednesday;
    // boolean onInThursday;
    // boolean onInFriday;
    // boolean onInSaturday;
    boolean ativo;

}