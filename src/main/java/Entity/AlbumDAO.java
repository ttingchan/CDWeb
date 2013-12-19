package Entity;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.annotation.Transactional;

import com.google.inject.Inject;
import com.mysql.jdbc.Statement;


public class AlbumDAO implements RowMapper<Album> 
{
	public Album mapRow(ResultSet rs, int rownum) throws SQLException
	{
		Album album = new Album(); 
		//album
		album.setId(rs.getInt("id"));
		album.setName(rs.getString("name"));
		album.setIssuingDate(rs.getDate("issuing_date"));
		album.setDescription(rs.getNString("description"));
		album.setPrice(rs.getInt("price"));
		album.setNumLike(rs.getInt("num_like"));
		album.setAuthorId(rs.getInt("id_author"));
		return album;
	}
	

	public List<Album> getSearchAlbumByString(String str) throws SQLException {
		// TODO Auto-generated method stub
		List<Album> albums = null;
		Album album= new Album();
		Connection currentCon = ConnectionManager.getConnection();
	    Statement statement= (Statement) currentCon.createStatement();
		String sql = "SELECT * FROM album WHERE name LIKE '%"+str+"%'";
		System.out.println(sql);
		ResultSet rs = statement.executeQuery(sql);
		if(rs.next())
		{
			album.setId(rs.getInt("id"));
			album.setName(rs.getString("name"));
			album.setIssuingDate(rs.getDate("issuing_date"));
			album.setDescription(rs.getNString("description"));
			album.setPrice(rs.getInt("price"));
			album.setNumLike(rs.getInt("num_like"));
			album.setAuthorId(rs.getInt("id_author"));
			albums.add(album);
		}
		
		return albums;
	}
	
	
	
	//List<Album> 
}
