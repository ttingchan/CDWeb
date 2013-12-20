package Entity;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
		return song;
	}

	public List<Song> getSearchSongByString(String str) throws SQLException {
		// TODO Auto-generated method stub
		List<Song> songs = new ArrayList<Song>();
		
		Connection currentCon = ConnectionManager.getConnection();
	    Statement statement= (Statement) currentCon.createStatement();
		String sql = "SELECT * FROM song WHERE name LIKE '%"+str+"%'";
		System.out.println(sql);
		ResultSet rs = statement.executeQuery(sql);
		if(rs.next())
		{
			Song song = new Song();
			song.setId(rs.getInt("id"));
			song.setDescription(rs.getString("description"));
			song.setName(rs.getString("name"));
			song.setAlbumID(rs.getInt("id_Album"));
			songs.add(song);
			
		}
		return songs;
	}

}
