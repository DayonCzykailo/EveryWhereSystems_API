package br.com.api.everywheresystems;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class EverywheresystemsApplication {

	public static void main(String[] args) {
		SpringApplication.run(EverywheresystemsApplication.class, args);
	}

	   
	@GetMapping("/")
	public String status(){
		return "ONLINE, segue o baile";//saber se o String está funcionando
	}

}
