package Entity;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
		album.setIssuingDate(rs.getString("issuing_date"));
		album.setDescription(rs.getString("description"));
		album.setPrice(rs.getInt("price"));
		album.setAuthorId(rs.getInt("id_author"));
		album.setImgURL(rs.getString("img_url"));
		return album;
	}
	

	public List<Album> getSearchAlbumByString(String str) throws SQLException {
		// TODO Auto-generated method stub
		List<Album> albums = new ArrayList<Album>();		
		Connection currentCon = ConnectionManager.getConnection();
	    Statement statement= (Statement) currentCon.createStatement();
		String sql = "SELECT * FROM album WHERE name LIKE '%"+str+"%'";
		System.out.println(sql);
		ResultSet rs = statement.executeQuery(sql);
		if(rs.next())
		{
			Album album= new Album();
			album.setId(rs.getInt("id"));
			album.setName(rs.getString("name"));
			album.setIssuingDate(rs.getString("issuing_date"));
			album.setDescription(rs.getString("description"));
			album.setPrice(rs.getInt("price"));
			album.setAuthorId(rs.getInt("id_author"));
			album.setImgURL(rs.getString("img_url"));
			albums.add(album);
		}
		
		return albums;
	}
	
	public List<Album> getAllAlbum() throws SQLException
	{
		List<Album> albums = new ArrayList<Album>();		
		Connection currentCon = ConnectionManager.getConnection();
	    Statement statement= (Statement) currentCon.createStatement();
		String sql = "SELECT * FROM album";
		ResultSet rs = statement.executeQuery(sql);
		int i=0;
		if(rs.next())
		{
			Album album= new Album();
			album.setId(rs.getInt("id"));
			album.setName(rs.getString("name"));
			album.setIssuingDate(rs.getString("issuing_date"));
			album.setDescription(rs.getString("description"));
			album.setPrice(rs.getInt("price"));
			album.setAuthorId(rs.getInt("id_author"));
			album.setImgURL(rs.getString("img_url"));
			albums.add(album);
			i++;
		}		
		System.out.println(albums.size() + i);
		return albums;		
	}
	
	public Album getAlbumContent(String str) throws SQLException
	{
		Connection currentCon = ConnectionManager.getConnection();
	    Statement statement= (Statement) currentCon.createStatement();
	    Album album = new Album();
	    
	    String sql = "SELECT * FROM album WHERE name = "+str+"";
	    System.out.println(sql);
	    ResultSet rs = statement.executeQuery(sql);
	    if(rs.next())
	    {
			album.setId(rs.getInt("id"));
			album.setName(rs.getString("name"));
			album.setIssuingDate(rs.getString("issuing_date"));
			album.setDescription(rs.getString("description"));
			album.setPrice(rs.getInt("price"));
			album.setAuthorId(rs.getInt("id_author"));
			album.setImgURL(rs.getString("img_url"));
	    }
		return album;		
	}
	
	
	
	
	//List<Album> 
}
