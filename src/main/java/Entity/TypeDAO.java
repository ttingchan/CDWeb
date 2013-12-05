package Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class TypeDAO implements RowMapper<Type>{

	public Type mapRow(ResultSet rs, int rownum) throws SQLException {
		// TODO Auto-generated method stub
		Type type = new Type();
		type.setId(rs.getInt("id"));
		type.setName(rs.getString("name"));
		return type;
	}
	

}
