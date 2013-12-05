package Entity;

import java.util.List;
import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;


@Entity
@Table(name="type")
public class Type {

	@ManyToMany (fetch=FetchType.LAZY)
	@JoinTable(name="song", joinColumns = {
			@JoinColumn (name="song_id", nullable= false, updatable = false)},
			inverseJoinColumns ={@JoinColumn(name="id", nullable = false, updatable =false)})
	private List<Song> songs;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	
	Type()
	{
		
	}
	
	Type(int id, String name)
	{
		this.id = id;
		this.name = name;
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
	
	@Override
	public int hashCode()
	{
		return Objects.hash(id,name);
	}
	
	@Override
	public boolean equals(Object obj)
	{
		if(obj ==null)
		{
			return false;
		}
		if(getClass() != obj.getClass())
		{
			return false;
		}
		final Type other = (Type)obj;
		return Objects.equals(this.id, other.id)
				&& Objects.equals(this.name, other.name);
	}
}
