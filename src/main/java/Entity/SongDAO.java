package Entity;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;

import com.mysql.jdbc.Statement;

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

	public List<Song> getSearchSongByString(String str) throws SQLException {
		// TODO Auto-generated method stub
		List<Song> songs = null;
		Song song = new Song();
		Connection currentCon = ConnectionManager.getConnection();
	    Statement statement= (Statement) currentCon.createStatement();
		String sql = "SELECT * FROM song WHERE CONCAT(name, description) LIKE '%"+str+"%'";
		ResultSet rs = statement.executeQuery(sql);
		if(rs.next())
		{
			song.setId(rs.getInt("id"));
			song.setDescription(rs.getString("description"));
			song.setName(rs.getString("name"));
			song.setNumLke(rs.getInt("num_like"));
			song.setType(rs.getInt("type"));
			song.setIdAuthor(rs.getInt("id_author"));
			songs.add(song);
		}
		return songs;
	}

}
