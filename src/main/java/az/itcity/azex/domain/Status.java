package az.itcity.azex.domain;

public enum Status {
    ACTIVE(1), DEACTIVE(0);

    private int value;

    Status(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }

    public Status fromValue(int value) {
        if(value == 1) {
            return ACTIVE;
        } else {
            return DEACTIVE;
        }
    }
}
