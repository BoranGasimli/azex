package az.itcity.azex.repository.jdbc;

import az.itcity.azex.domain.Customer;
import az.itcity.azex.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.CallableStatement;
import java.sql.Timestamp;

@Repository
public class CustomerRepositoryJdbcImpl implements CustomerRepository {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public Customer register(Customer customer) {
        /*
        * CREATE DEFINER=`azex_admin`@`%` PROCEDURE `register_customer`(
            p_email varchar(100),
            p_name varchar(100),
            p_surname varchar(100),
            p_password varchar(255),
            p_registration_date datetime,
            p_token varchar(255),
            p_token_expire_date datetime
        )
        * */

        jdbcTemplate.call(connection -> {
            CallableStatement cs = connection.prepareCall(SqlQuery.REGISTER_CUSTOMER);
            cs.setString(1, customer.getUser().getEmail());
            cs.setString(2, customer.getUser().getEmail());
            cs.setString(3, customer.getUser().getName());
            cs.setString(4, customer.getUser().getSurname());
            cs.setString(5, customer.getUser().getPassword());
            cs.setTimestamp(6, Timestamp.valueOf(customer.getUser().getRegistrationDate()));
            cs.setString(7, customer.getUser().getToken());
            cs.setTimestamp(8, Timestamp.valueOf(customer.getUser().getTokenExpireDate()));
            return cs;
        }, null);
        return null;
    }
}
