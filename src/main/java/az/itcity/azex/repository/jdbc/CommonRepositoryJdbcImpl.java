package az.itcity.azex.repository.jdbc;

import az.itcity.azex.repository.CommonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.Types;

@Repository
public class CommonRepositoryJdbcImpl implements CommonRepository {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public boolean checkEmail(String email) {
        Integer count = jdbcTemplate.queryForObject(SqlQuery.CHECK_EMAIL, new Object[]{email}, new int[]{Types.VARCHAR}, Integer.class);
        return count > 0;
    }
}
