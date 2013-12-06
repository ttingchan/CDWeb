package Entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="comment")
public class Comment {
	
	@ManyToOne
	@Column(name ="userId")
	private User user;
	@ManyToOne
	@Column(name="songId")
	private Song song;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String content;
	private Date dateComm;
	private int num_like;
	private int id_album;
	private int id_user;
	Comment()
	{
		
	}
	
	Comment(Integer id, String content, Date dateComm)
	{
		this.id = id;
		this.content = content;
		this.dateComm = dateComm;
	}

	Integer getId()
	{
		return this.id;
	}
	
	public void setId(Integer id)
	{
		this.id = id;
	}
	
	String getContent()
	{
		return this.content;
	}
	
	public void setContetn(String content)
	{
		this.content = content;
	}
	
	Date getDateComm()
	{
		return this.dateComm;
	}
	
	public void setDateComm(Date dateComm)
	{
		this.dateComm = dateComm;
	}
	
	public int getNumLike()
	{
		return this.num_like;
	}
	
	public void setNumLike(int numlike)
	{
		this.num_like = numlike;
	}
	
	public int getIdAlbum()
	{
		return this.id_album;
	}
	
	public void setIdAlbum(int idAlbum)
	{
		this.id_album = idAlbum;
	}
	
	public int getIdUser()
	{
		return this.id_user;
	}
	
	public void setIdUser(int idUser)
	{
		this.id_user = idUser;
	}
}
