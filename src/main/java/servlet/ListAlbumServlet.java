package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entity.Album;
import Entity.AlbumDAO;
import Entity.Author;
import Entity.AuthorDAO;
import Entity.Song;
import Entity.SongDAO;

public class ListAlbumServlet extends HttpServlet
{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
	{
		AlbumDAO searchRe = new AlbumDAO();
		List<Album> albumList = new ArrayList<Album>();
		try {
			albumList = searchRe.getAllAlbum();
			System.out.println(albumList.size());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	//	List<Song> songSearch = searchRe.getSearchSongByString(search);
	//	List<Author> authorSearch = searchRe.getSearchAuthorByString(search);
		HttpSession session = request.getSession();
		if(albumList == null)
		{
			String message = "Sorry, there is no result for your search";
			request.setAttribute("noResult", message);			
		}
		else
		{
			if(albumList != null)
				request.getSession().setAttribute("CDList", albumList);
		}
		this.getServletContext().getRequestDispatcher("/cdlist.jsp").forward(request, response);		
	}

}
