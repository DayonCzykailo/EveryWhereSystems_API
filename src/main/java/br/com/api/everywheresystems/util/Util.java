package br.com.api.everywheresystems.util;

import java.time.LocalDateTime;
import java.time.ZoneId;

public class Util {
    static public LocalDateTime getDataHoraAgora() {
        return LocalDateTime.now(ZoneId.of("UTC"));
    }

    public static <T extends Enum<T>> T getStringParaEnum(Class<T> c, String string) {
        if( c != null && string != null ) {
            try {
                return Enum.valueOf(c, string.trim().toUpperCase());
                //return Enum.valueOf(c, string.trim().toUpperCase(Locale.ENGLISH));// nao tem locale.BRAZIL ): so sad
            } catch(IllegalArgumentException ex) {}
        }
        return null;
    }
}
