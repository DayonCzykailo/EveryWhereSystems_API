package br.com.api.everywheresystems.util;

import java.io.*;

public class Compose {
    public void create(String nome, String image)
            throws IOException {
        String str = "Hello";
        BufferedWriter writer = new BufferedWriter(new FileWriter(nome + ".txt"));
        writer.write(str);

        writer.close();
    }
}
