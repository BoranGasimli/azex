package az.itcity.azex.web;

import org.apache.commons.validator.routines.EmailValidator;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class TestFormValidator implements Validator {

    private EmailValidator emailValidator = EmailValidator.getInstance();

    @Override
    public boolean supports(Class<?> aClass) {
        return aClass.equals(TestForm.class);
    }

    @Override
    public void validate(Object o, Errors errors) {

        TestForm form = (TestForm) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"name", "form.test.name.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"surname", "form.test.surname.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"email", "form.test.email.required");

        if(!errors.hasErrors()) {
            if(!emailValidator.isValid(form.getEmail())) {
                errors.rejectValue("email", "form.test.email.invalid");
            }
        }

        if(errors.hasErrors()) {
            System.out.println("formda xetalar var");
            System.out.println("xetalarin sayi = " + errors.getErrorCount());
            System.out.println("xetalar = " );
            errors.getAllErrors().forEach(System.out::println);
        }
    }
}
