package az.itcity.azex.web;

import org.apache.commons.validator.routines.EmailValidator;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import static az.itcity.azex.web.WebConstants.*;

@Component
public class RegistrationFormValidator implements Validator {

    private EmailValidator emailValidator = EmailValidator.getInstance();

    @Override
    public boolean supports(Class<?> aClass) {
        return aClass.equals(RegistrationForm.class);
    }

    @Override
    public void validate(Object o, Errors errors) {

        RegistrationForm form = (RegistrationForm) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"name", "form.register.name.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"surname", "form.register.surname.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"email", "form.register.email.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"password", "form.register.password.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"passwordConfirmation", "form.register.passwordConfirmation.required");


        if(!errors.hasErrors()) {

            if(form.getName().length() < NAME_MIN_LENGTH) {
                errors.rejectValue("name", "form.register.name.min.length");
            }

            if(form.getName().length() > NAME_MAX_LENGTH) {
                errors.rejectValue("name", "form.register.name.max.length");
            }

            if(form.getSurname().length() < SURNAME_MIN_LENGTH) {
                errors.rejectValue("surname", "form.register.surname.min.length");
            }

            if(form.getSurname().length() > SURNAME_MAX_LENGTH) {
                errors.rejectValue("surname", "form.register.surname.max.length");
            }

            if(form.getPassword().length() < PASSWORD_MIN_LENGTH) {
                errors.rejectValue("password", "form.register.password.min.length");
            }

            if(form.getPasswordConfirmation().length() < PASSWORD_MIN_LENGTH) {
                errors.rejectValue("passwordConfirmation", "form.register.password.min.length");
            }

            if(!form.getPasswordConfirmation().equals(form.getPassword())) {
                errors.rejectValue("passwordConfirmation", "form.register.password.mismatch");
            }

            if(!emailValidator.isValid(form.getEmail())) {
                errors.rejectValue("email", "form.register.email.invalid");
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
