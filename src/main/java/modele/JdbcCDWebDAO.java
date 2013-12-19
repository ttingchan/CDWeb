package modele;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.google.inject.Inject;

import Entity.*;


public class JdbcCDWebDAO implements CDWebDAO 
{
	private JdbcTemplate jdbc;
	
	
	public JdbcCDWebDAO()
	{
		
	}
	
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
		String sql = "SELECT * FROM author where id = ?";
		List<Author> author = jdbc.query(sql, new AuthorDAO(),id);
		return author;
	}

	public List<Comment> GetAllComment(int id) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM comment where id = ?";
		List<Comment> comment = jdbc.query(sql, new CommentDAO(),id);
		return comment;
	}

	public List<Song> GetAllSong(int id) {
		// TODO Auto-generated method stub
		String sql ="SELECT * FROM song where id = ?";
		List<Song> song = jdbc.query(sql, new SongDAO(),id);
		return song;
	}

	public List<Type> GetAllType(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<User> GetAllUser(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Album> getSearchAlbumByString(String str) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM album WHERE CONCAT(name,description) LIKE '%'+?+'%'";
		List<Album> album = jdbc.query(sql, new AlbumDAO(),str);
		return album;
	}

	public List<Song> getSearchSongByString(String str) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM song WHERE CONCAT(name, description) LIKE '%'+?+'%'";
		List<Song> song = jdbc.query(sql, new SongDAO(),str);
		return song;
	}

	public List<Author> getSearchAuthorByString(String str) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM author WHERE name LIKE '%'+?+'%'";
		List<Author> author = jdbc.query(sql, new AuthorDAO(),str);
		return author;
	}

}
