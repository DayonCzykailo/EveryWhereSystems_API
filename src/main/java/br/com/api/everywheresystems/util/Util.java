package br.com.api.everywheresystems.util;

import java.time.LocalDateTime;
import java.time.ZoneId;

public class Util {
    static public LocalDateTime getDataHoraAgora() {
        return LocalDateTime.now(ZoneId.of("UTC"));
    }

    public static <T extends Enum<T>> T getStringParaEnum(Class<T> c, String string) {
        if (c != null && string != null) {
            try {
                return Enum.valueOf(c, string.trim().toUpperCase());
                // return Enum.valueOf(c, string.trim().toUpperCase(Locale.ENGLISH));// nao tem
                // locale.BRAZIL ): so sad
            } catch (IllegalArgumentException ex) {
            }
        }
        return null;
    }

    public static String unformatedCnpj(String cnpj) {
        return cnpj.replaceAll("[^0-9]", "");//.replaceAll("[^\\d ]", "")
    }
    public static boolean validarString(String campo) {
        if (campo == null) {
            return false;
        }
        if (campo.isBlank()) {
            return false;
        }
        return true;
    }
}
