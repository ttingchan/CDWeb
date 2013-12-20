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


public class Song {


	private int id;
	private String name;
	private String description;
	private int id_Album;
	
	Song()
	{
		
	}
	
	Song(int id, String name, String description,int albumID)
	{
		this.id = id;
		this.name = name;
		this.description = description;
		this.id_Album = albumID;
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
	
	public String getDescription()
	{
		 return this.description;
	}
	
	public void setDescription(String des)
	{
		 this.description = des;
	}
	
	public int getAlbumID()
	{
		return this.id_Album;
	}
	
	public void setAlbumID(int albumID)
	{
		this.id_Album = albumID;
	}
}
