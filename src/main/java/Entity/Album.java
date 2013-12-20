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

	private Author author;
	private Integer id;
	private String name;
	private String issuing_date;
	private int price;
	private  String description;
	private Integer author_id;
	Album()
	{
		
	}
	Album(Integer id, String name, String issuing_date, int price, String description,Integer authos_id)
	{
		this.id = id;
		this.name = name;
		this.issuing_date = issuing_date;
		this.price = price;
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
	String getIssuingDate()
	{
		return this.issuing_date;
	}
	
	void setIssuingDate(String date)
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
		return Objects.hash(this.id,this.name,this.issuing_date,this.price, this.description) ;
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
				&& Objects.equals(this.description, other.description); 
						
	}
}
