package Entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;



@Entity
@Table(name="song")
public class Song {

	@ManyToOne
	@Column(name="albumId")
	private Album album;
	
	@ManyToMany (fetch=FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinTable (name="Type", joinColumns ={
		@JoinColumn(name="typeId", nullable = false,updatable = false)},
		inverseJoinColumns ={@JoinColumn(name="id", nullable= false, updatable = false)})
	private List<Type> types;
	@OneToMany(mappedBy="Comment", fetch = FetchType.LAZY)
	private List<Comment> comments;
	@Id
	private int id;
	private String name;
	private int num_like;
	private String description;
	private int type;
	private int id_author;
	
	Song()
	{
		
	}
	
	Song(int id, String name, int num_like, String description, int type, int id_author)
	{
		this.id = id;
		this.name = name;
		this.num_like = num_like;
		this.description = description;
		this.type = type;
		this.id_author = id_author;
	}
	
	public int getId()
	{
		return this.id;
	}
	
	public void setId(int id)
	{
		this.id = id;
	}
	
	public String getName()
	{
		return this.name;
	}
	
	public void setName(String name)
	{
		this.name = name;
	}
	
	public int getNumLike()
	{
		return this.num_like;
	}
	
	public void setNumLke(int numlike)
	{
		 this.num_like = numlike;
	}
	
	public int getType()
	{
		return this.type;
	}
	
	public void setType(int type)
	{
		 this.type = type;
	}
	
	public int getIdAuthor()
	{
		 return this.id_author;
	}
	
	public void setIdAuthor(int idAuthor)
	{
		 this.id_author = idAuthor;
	}
	
	public String getDescription()
	{
		 return this.description;
	}
	
	public void setDescription(String des)
	{
		 this.description = des;
	}
}
