package az.itcity.azex.repository.jdbc;

public class SqlQuery {

    public static final String CHECK_EMAIL = "select count(c.id) customer_count " +
            "from customer c join users u on c.user_id = u.id " +
            "   and u.user_type = 1 " +
            "   and c.status = 1 " +
            "    and u.status = 1 " +
            "where u.email = ?";
}
