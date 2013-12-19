package Entity;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;

import com.mysql.jdbc.Statement;

public class AuthorDAO implements RowMapper<Author> 
{

	public Author mapRow(ResultSet rs, int rownum) throws SQLException {
		// TODO Auto-generated method stub
		Author author = new Author();
		author.setId(rs.getInt("id"));
		author.setName(rs.getString("name"));
		return author;
	}
	
	public List<Author> getSearchAuthorByString(String str) throws SQLException {
		// TODO Auto-generated method stub
		List<Author> authors = null;
		Author author = new Author();
		Connection currentCon = ConnectionManager.getConnection();
	    Statement statement= (Statement) currentCon.createStatement();	    
		String sql = "SELECT * FROM author WHERE name LIKE '%"+str+"%'";
		ResultSet rs = statement.executeQuery(sql);
		if(rs.next())
		{
			author.setId(rs.getInt("id"));
			author.setName(rs.getString("name"));
			authors.add(author);
		}
		return authors;
	}
}
