package modele;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.google.inject.Inject;

import Entity.*;


public class JdbcCDWebDAO implements CDWebDAO 
{
	private JdbcTemplate jdbc;
	
	@Inject
	JdbcCDWebDAO(DataSource dataSource)
	{
		jdbc = new JdbcTemplate(dataSource);
	}

	public List<User> GetAllAlbum(int id) 
	{
		String sql = "SELECT * FROM album where id = ?";
		List<User> user = jdbc.query(sql, new UserDAO(),id );
		// TODO Auto-generated method stub
		return user;
	}

	public List<Author> GetAllAuthor(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Comment> GetAllComment(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Song> GetAllSong(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Type> GetAllType(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<User> GetAllUser(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}
