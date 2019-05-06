package az.itcity.azex.domain;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;

public class Customer extends BaseDomain implements Serializable {

    private static final long serialVersionUID = 6326890947276549372L;
    private User user;

    @JsonProperty("customer_code")
    private String customerCode;

    private String idcard;
    // TODO add other properties


    public Customer() {
        this.user = new User();
        this.customerCode = "";
        this.idcard = "";
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getCustomerCode() {
        return customerCode;
    }

    public void setCustomerCode(String customerCode) {
        this.customerCode = customerCode;
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "id=" + id +
                ", customerCode='" + customerCode + '\'' +
                ", idcard='" + idcard + '\'' +
                ", user=" + user +
                ", status=" + status +
                '}';
    }
}
