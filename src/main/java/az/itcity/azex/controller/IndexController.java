package az.itcity.azex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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

    @PostMapping("/register")
    public String registerCustomer(
            @RequestParam(name="first_name") String firstName,
            @RequestParam(name="last_name") String lastName,
            @RequestParam(name="password") String password,
            @RequestParam(name="password_confirmation") String passwordConfirmation,
            RedirectAttributes redirectAttributes
    ) {
        System.out.println("first name = " + firstName);
        System.out.println("last name = " + lastName);
        System.out.println("password = " + password);
        System.out.println("password confirmation = " + passwordConfirmation);
        redirectAttributes.addFlashAttribute("message", "Qeydiyyatınız tamamlandı, profilinizi aktivləşdirmək üçün email adresinizə göndərilmiş linkə daxil olun.");

        return "redirect:/login";
    }

    @GetMapping("/login")
    public String login() {
        return "web/login";
    }
}
