package az.itcity.azex.domain;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Objects;

public class User extends BaseDomain implements Serializable {
    private static final long serialVersionUID = 8162158988840963606L;

    private String email;
    private String password;
    private String pinCode;
    private String name;
    private String surname;
    private Gender gender;
    private String phone1;
    private String phone2;
    private LocalDate birthDate;
    private LocalDateTime registrationDate;
    private String token;
    private LocalDateTime tokenExpireDate;
    private String smsVerificationCode;
    private LocalDateTime smsVerificationExpireDate;
    private LocalDateTime activationDate;
    private LocalDateTime lastUpdate;
    private UserStatus userStatus;
    private UserType type;

    public User() {
        // TODO
        this.email = "";
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", pinCode='" + pinCode + '\'' +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", gender=" + gender +
                ", phone1='" + phone1 + '\'' +
                ", phone2='" + phone2 + '\'' +
                ", birthDate=" + birthDate +
                ", registrationDate=" + registrationDate +
                ", token='" + token + '\'' +
                ", tokenExpireDate=" + tokenExpireDate +
                ", smsVerificationCode='" + smsVerificationCode + '\'' +
                ", smsVerificationExpireDate=" + smsVerificationExpireDate +
                ", activationDate=" + activationDate +
                ", lastUpdate=" + lastUpdate +
                ", userStatus=" + userStatus +
                ", type=" + type +
                ", status=" + status +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return Objects.equals(email, user.email) &&
                Objects.equals(password, user.password) &&
                Objects.equals(pinCode, user.pinCode) &&
                Objects.equals(name, user.name) &&
                Objects.equals(surname, user.surname) &&
                gender == user.gender &&
                Objects.equals(phone1, user.phone1) &&
                Objects.equals(phone2, user.phone2) &&
                Objects.equals(birthDate, user.birthDate) &&
                Objects.equals(registrationDate, user.registrationDate) &&
                Objects.equals(token, user.token) &&
                Objects.equals(tokenExpireDate, user.tokenExpireDate) &&
                Objects.equals(smsVerificationCode, user.smsVerificationCode) &&
                Objects.equals(smsVerificationExpireDate, user.smsVerificationExpireDate) &&
                Objects.equals(activationDate, user.activationDate) &&
                Objects.equals(lastUpdate, user.lastUpdate) &&
                userStatus == user.userStatus &&
                type == user.type;
    }

    @Override
    public int hashCode() {
        return Objects.hash(email, password, pinCode, name, surname, gender, phone1, phone2, birthDate, registrationDate, token, tokenExpireDate, smsVerificationCode, smsVerificationExpireDate, activationDate, lastUpdate, userStatus, type);
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPinCode() {
        return pinCode;
    }

    public void setPinCode(String pinCode) {
        this.pinCode = pinCode;
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

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public String getPhone1() {
        return phone1;
    }

    public void setPhone1(String phone1) {
        this.phone1 = phone1;
    }

    public String getPhone2() {
        return phone2;
    }

    public void setPhone2(String phone2) {
        this.phone2 = phone2;
    }

    public LocalDate getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(LocalDate birthDate) {
        this.birthDate = birthDate;
    }

    public LocalDateTime getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(LocalDateTime registrationDate) {
        this.registrationDate = registrationDate;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public LocalDateTime getTokenExpireDate() {
        return tokenExpireDate;
    }

    public void setTokenExpireDate(LocalDateTime tokenExpireDate) {
        this.tokenExpireDate = tokenExpireDate;
    }

    public String getSmsVerificationCode() {
        return smsVerificationCode;
    }

    public void setSmsVerificationCode(String smsVerificationCode) {
        this.smsVerificationCode = smsVerificationCode;
    }

    public LocalDateTime getSmsVerificationExpireDate() {
        return smsVerificationExpireDate;
    }

    public void setSmsVerificationExpireDate(LocalDateTime smsVerificationExpireDate) {
        this.smsVerificationExpireDate = smsVerificationExpireDate;
    }

    public LocalDateTime getActivationDate() {
        return activationDate;
    }

    public void setActivationDate(LocalDateTime activationDate) {
        this.activationDate = activationDate;
    }

    public LocalDateTime getLastUpdate() {
        return lastUpdate;
    }

    public void setLastUpdate(LocalDateTime lastUpdate) {
        this.lastUpdate = lastUpdate;
    }

    public UserStatus getUserStatus() {
        return userStatus;
    }

    public void setUserStatus(UserStatus userStatus) {
        this.userStatus = userStatus;
    }

    public UserType getType() {
        return type;
    }

    public void setType(UserType type) {
        this.type = type;
    }
}
