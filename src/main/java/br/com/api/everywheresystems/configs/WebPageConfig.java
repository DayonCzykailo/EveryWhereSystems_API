package br.com.api.everywheresystems.configs;

import java.util.Arrays;
import java.util.Collections;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.handler.SimpleUrlHandlerMapping;
import org.springframework.web.servlet.resource.ResourceHttpRequestHandler;

@Configuration
public class WebPageConfig extends WebMvcConfigurerAdapter { // TOMA NO CU, FAVICON
    @Bean
    public SimpleUrlHandlerMapping faviconHandlerMapping() {
        SimpleUrlHandlerMapping mapping = new SimpleUrlHandlerMapping();
        mapping.setOrder(Integer.MIN_VALUE);
        mapping.setUrlMap(Collections.singletonMap("/favicon.ico",
                faviconRequestHandler()));
        return mapping;
    }

    @Bean
    protected ResourceHttpRequestHandler faviconRequestHandler() {
        ResourceHttpRequestHandler requestHandler = new ResourceHttpRequestHandler();
        requestHandler.setLocations(Arrays
                .<Resource>asList(new ClassPathResource("/")));
        return requestHandler;
    }

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {// adireciona para uma pagina dependendo do erro
                                                                     // Htpp
        registry.addViewController("/404.html").setViewName("404");
        registry.addViewController("/login.html").setViewName("401");
        registry.addViewController("/login.html").setViewName("403");
    }

}