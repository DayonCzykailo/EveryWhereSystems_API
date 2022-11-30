package br.com.api.everywheresystems.dto;

import java.sql.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class DockerDto {
    String name;

    String description;

    String compose;
    String log;
    String status;
    String imagem;

    // Date hour;
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
