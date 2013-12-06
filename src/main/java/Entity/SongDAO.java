package Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class SongDAO implements RowMapper<Song> {

	public Song mapRow(ResultSet rs, int rownum) throws SQLException {
		// TODO Auto-generated method stub
		
		Song song = new Song();
		song.setId(rs.getInt("id"));
		song.setDescription(rs.getString("description"));
		song.setName(rs.getString("name"));
		song.setNumLke(rs.getInt("num_like"));
		song.setType(rs.getInt("type"));
		song.setIdAuthor(rs.getInt("id_author"));
		return song;
	}

}
