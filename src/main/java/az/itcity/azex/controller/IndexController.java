package az.itcity.azex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

    @RequestMapping("/")

    public String index() {
        return "index";
    }

    @GetMapping("/register")
    public String register() {
        return "/web/register";
    }
}
