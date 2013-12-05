package Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class CommentDAO implements RowMapper<Comment> {

	public Comment mapRow(ResultSet rs, int rownum) throws SQLException {
		// TODO Auto-generated method stub
		Comment comment = new Comment();
		comment.setId(rs.getInt("id"));
		comment.setContetn(rs.getString("comment"));
		comment.setDateComm(rs.getDate("date_of_comment"));
		comment.setNumLike(rs.getInt("num_like"));
		comment.setIdAlbum(rs.getInt("id_album"));
		comment.setIdUser(rs.getInt("id_user"));
		return comment;
	}

}
