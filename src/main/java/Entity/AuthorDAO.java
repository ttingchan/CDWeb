package Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class AuthorDAO implements RowMapper<Author> 
{

	public Author mapRow(ResultSet rs, int rownum) throws SQLException {
		// TODO Auto-generated method stub
		Author author = new Author();
		author.setId(rs.getInt("id"));
		author.setName(rs.getString("name"));
		return author;
	}
	

}
