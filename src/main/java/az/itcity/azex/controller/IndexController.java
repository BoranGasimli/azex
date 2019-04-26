package az.itcity.azex.controller;

import az.itcity.azex.domain.Customer;
import az.itcity.azex.service.CommonService;
import az.itcity.azex.web.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class IndexController {

    @Autowired
    private CommonService commonService;

    @Autowired
    private TestFormValidator testFormValidator;

    @Autowired
    private RegistrationFormValidator registrationFormValidator;

//    @InitBinder
//    protected void initBinder(WebDataBinder dataBinder) {
//        // Form target
//        Object target = dataBinder.getTarget();
//        if (target == null) {
//            return;
//        }
//
//        if (target.getClass() == TestForm.class) {
//            dataBinder.setValidator(testFormValidator);
//        }
//
//        if(target.getClass() == RegistrationForm.class) {
//            dataBinder.setValidator(registrationFormValidator);
//        }
//    }

    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @GetMapping("/register")
    public ModelAndView register() {
        ModelAndView mav = new ModelAndView("/web/register");
        mav.addObject("registrationForm", new RegistrationForm());
        return mav;
    }

    @PostMapping("/register")
    public ModelAndView registerCustomer(
            Model model,
//            @ModelAttribute("registrationForm") @Validated  RegistrationForm form,
            @ModelAttribute("registrationForm") @Validated RegistrationFormNew form,
            BindingResult result
    ) {
        ModelAndView mav = new ModelAndView("redirect:/");

        System.out.println("reg form = " + form);

        if(result.hasErrors()) {
            System.out.println("xeta sayi = " + result.getErrorCount());
            System.out.println("xetalar = " + result.getAllErrors());

            mav.setViewName("/web/register");
        } else {

            // TODO create customer object
            // register customer
        }

        return mav;
    }



//    @PostMapping("/register")
//    public String registerCustomer(
//            @RequestParam(name = "first_name") String firstName,
//            @RequestParam(name = "last_name") String lastName,
//            @RequestParam(name = "password") String password,
//            @RequestParam(name = "password_confirmation") String passwordConfirmation,
//            RedirectAttributes redirectAttributes
//    ) {
//        System.out.println("first name = " + firstName);
//        System.out.println("last name = " + lastName);
//        System.out.println("password = " + password);
//        System.out.println("password confirmation = " + passwordConfirmation);
//        redirectAttributes.addFlashAttribute("message", "Qeydiyyatınız tamamlandı, profilinizi aktivləşdirmək üçün email adresinizə göndərilmiş linkə daxil olun.");
//
//        return "redirect:/login";
//    }

    @GetMapping("/login")
    public String login() {
        return "web/login";
    }

    @GetMapping("/email")
    public ResponseEntity<Boolean> checkEmail(
            @RequestParam("email") String email
    ) {
        Boolean check = commonService.checkEmail(email);
        return new ResponseEntity<>(check, HttpStatus.OK);
    }

    @GetMapping("/test")
//    @RequestMapping(name = "/test", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView test() {
        ModelAndView mav = new ModelAndView("test");
        TestForm form = new TestForm();
        form.setName("Fexri");
        form.setSurname("Afrasiyab");
        mav.addObject("testFormModel", form);
        return mav;
    }

    @PostMapping("/test")
    public ModelAndView processTestForm(Model model,
                                        @ModelAttribute("testFormModel") @Validated TestForm form,
                            BindingResult result) {
        ModelAndView mav = new ModelAndView();

        if(result.hasErrors()) {
            mav.setViewName("test");
        } else {
            System.out.println("form = " + form);
            mav.setViewName("redirect:/");
        }

        return mav;
    }

}
