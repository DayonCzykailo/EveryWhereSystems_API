package br.com.api.everywheresystems.util.scripts;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class ShellScript {

    public static String executarShellScript(String comando) {
        String resposta = "";

        try {
            String resultado;
            Process execucaoPowerShell = Runtime.getRuntime().exec("powershell.exe " + comando);
            execucaoPowerShell.getOutputStream().close();

            BufferedReader saida = new BufferedReader(new InputStreamReader(execucaoPowerShell.getInputStream()));
            while ((resultado = saida.readLine()) != null) {
                if (!resultado.isEmpty()) {
                    resposta += resultado + "\n";
                }
            }

            // BufferedReader saidaErro = new BufferedReader(new
            // InputStreamReader(execucaoPowerShell.getErrorStream()));
            // resposta += "\n\nErros gerados: \n";
            // while ((resultado = saidaErro.readLine()) != null) {
            // resposta += resultado + "\n";
            // }

            resposta += "\n";

            saida.close();
            // saidaErro.close();

        } catch (Exception e) {
            System.out.println("Erro:" + e.getMessage());
        }
        return resposta;

    }

    /*
     * public static void main(String[] args) throws IOException {
     * System.out.println(executarShellScript("ls"));
     * }
     */
}
