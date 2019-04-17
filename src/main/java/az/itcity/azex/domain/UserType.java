package az.itcity.azex.domain;

public enum UserType {
    CUSTOMER(0), EMPLOYEE(1);

    private int value;

    UserType(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }
}
