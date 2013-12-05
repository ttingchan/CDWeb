package Entity;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.annotation.Transactional;

import com.google.inject.Inject;


public class AlbumDAO implements RowMapper<Album> 
{
	
	private JdbcTemplate jdbc;
	
	@Inject
	AlbumDAO(DataSource dataSource)
	{
		jdbc = new JdbcTemplate(dataSource);
	}
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
}
