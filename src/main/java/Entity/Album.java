package Entity;

import java.util.List;
import java.util.Objects;
import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="album")
public class Album implements Serializable{

	@ManyToOne
	@Column(name="authorId")
	private Author author;
	@OneToMany (mappedBy="song", fetch= FetchType.LAZY)
	private List<Song> songs;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String name;
	private Date issuing_date;
	private int price;
	private int num_like;
	private  String description;
	private Integer author_id;
	Album()
	{
		
	}
	Album(Integer id, String name, Date issuing_date, int price, int num_like, String description,Integer authos_id)
	{
		this.id = id;
		this.name = name;
		this.issuing_date = issuing_date;
		this.price = price;
		this.num_like = num_like;
		this.description = description;
		this.author_id = author_id;
	}
	
	Integer getId()
	{
		return this.id;
	}
	
	void setId(Integer id)
	{
		this.id = id;
	}
	
	String getName()
	{
		return this.name;
	}
	
	void setName(String name)
	{
		this.name = name;
	}
	Date getIssuingDate()
	{
		return this.issuing_date;
	}
	
	void setIssuingDate(Date date)
	{
		this.issuing_date = date;
	}
	
	int getPrice()
	{
		return this.price;
	}
	
	void setPrice(int price)
	{
		this.price = price;
	}
	
	int getNumLike()
	{
		return this.num_like;
	}
	
	void setNumLike(int like)
	{
		this.num_like = like;
	}
	
	String getDescription()
	{
		return this.description;
	}
	
	void setDescription(String des)
	{
		this.description = des;
	}
	
	Integer getAuthorId()
	{
		return this.author_id;
	}
	
	void setAuthorId(Integer author_id)
	{
		this.author_id = author_id;
	}
	
	@Override
	public int hashCode(){
		return Objects.hash(this.id,this.name,this.issuing_date,this.price,this.num_like,this.description) ;
	}
	
	@Override
	public boolean equals(Object obj)
	{
		if(obj == null)
		{
			return false;
		}
		
		if(getClass() != obj.getClass())
		{
			return false;
		}
		final Album other = (Album)obj;
		return Objects.equals(this.id, other.id)
				&& Objects.equals(this.name, other.name)
				&& Objects.equals(this.issuing_date, other.issuing_date)
				&& Objects.equals(this.price, other.price)
				&& Objects.equals(this.num_like, other.num_like)
				&& Objects.equals(this.description, other.description); 
						
	}
}
