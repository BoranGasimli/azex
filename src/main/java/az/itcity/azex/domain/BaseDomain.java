package az.itcity.azex.domain;

import java.io.Serializable;

public class BaseDomain implements Serializable {
    private static final long serialVersionUID = 5883345625340911660L;
    protected long id;
    protected Status status;

    public BaseDomain() {
        this.id = 0;
        this.status = Status.ACTIVE;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "BaseDomain{" +
                "id=" + id +
                ", status=" + status +
                '}';
    }
}
