package modele;

import java.util.List;

import Entity.*;
public interface CDWebDAO {


	public List<User> GetAllAlbum(int id);
	
	public List<Author> GetAllAuthor(int id);
	
	public List<Comment> GetAllComment(int id);
	
	public List<Song> GetAllSong(int id);
	
	public List<Type> GetAllType(int id);
	
	public List<User> GetAllUser(int id);
}
