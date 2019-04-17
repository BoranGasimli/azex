package az.itcity.azex.domain;

import java.util.Arrays;

public enum UserStatus {

    PENDING(0), ACTIVE(1), EXPIRED(2), LOCKED(3), DISABLED(4);

    private int value;

    UserStatus(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }

    public static UserStatus fromValue(int value) {
        return Arrays.stream(values())
                .filter(t -> t.getValue() == value)
                .findFirst()
                .orElseThrow(() -> new IllegalArgumentException("Unknown user status " + value));
    }
}
