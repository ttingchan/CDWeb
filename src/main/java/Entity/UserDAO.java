package Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class UserDAO implements RowMapper<User>{

	public User mapRow(ResultSet rs, int rownum) throws SQLException {
		// TODO Auto-generated method stub
		User user = new User();
		user.setId(rs.getInt("id"));
		user.setNickname(rs.getString("nickname"));
		user.setPsw(rs.getString("psw"));
		user.setFirstname(rs.getString("firstname"));
		user.setLastName(rs.getString("lastname"));
		user.setAddress(rs.getString("address"));
		user.setCity(rs.getString("city"));
		user.setCountry(rs.getString("country"));
		user.setZip(rs.getString("zip"));
		user.setBirthday(rs.getDate("birthday"));
		user.setPhonenum(rs.getString("phonenum"));
		return user;
	}

}
