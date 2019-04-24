package az.itcity.azex.web;

import az.itcity.azex.web.validation.FieldMatch;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.io.Serializable;

@FieldMatch.List({
        @FieldMatch(first = "password", second = "passwordConfirmation", message = "{register.password.mismatch}"),

})
public class RegistrationFormNew implements Serializable {

    private static final long serialVersionUID = 4646512818479543788L;

    @NotNull
    @Size(min=5, max = 100, message = "{register.name.size}")
    private String name;

    @NotNull
    @Size(min=7, max = 100, message = "{register.surname.size}")
    private String surname;

    @NotNull
    @Email(message = "{register.email.invalid}")
    @Size(max = 100, message = "{register.email.size}")
    private String email;

    @NotNull
    @Size(min = 8, max = 16, message = "{register.password.size}")
    private String password;

    @NotNull
    @Size(min = 8, max = 16, message = "{register.passwordConfirmation.size}")
    private String passwordConfirmation;

    public RegistrationFormNew() {
    }

    @Override
    public String toString() {
        return "RegistrationForm{" +
                "name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", passwordConfirmation='" + passwordConfirmation + '\'' +
                '}';
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPasswordConfirmation() {
        return passwordConfirmation;
    }

    public void setPasswordConfirmation(String passwordConfirmation) {
        this.passwordConfirmation = passwordConfirmation;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
