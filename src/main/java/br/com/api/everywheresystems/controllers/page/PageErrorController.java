package br.com.api.everywheresystems.controllers.page;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageErrorController {
    
    @RequestMapping("/404.html")
    public String render404(Model model) {
        return "error/404";
    }

    @RequestMapping("/403.html")
    public String render403(Model model) {
        return "error/403";
    }
   
}

