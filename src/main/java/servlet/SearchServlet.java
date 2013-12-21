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

import Entity.*;
import modele.JdbcCDWebDAO;

public class SearchServlet extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
	{
		String search = request.getParameter("search");
		AlbumDAO searchRe = new AlbumDAO();
		SongDAO songRe = new SongDAO();
		AuthorDAO authorRe = new AuthorDAO();
		List<Song> songSearch = new ArrayList<Song>();
		List<Album> albumSearch = new ArrayList<Album>();
		List<Author> authorSearch = new ArrayList<Author>();
		Boolean result = (songSearch==null && albumSearch==null && authorSearch== null);
		try {
			albumSearch = searchRe.getSearchAlbumByString(search);
			songSearch = songRe.getSearchSongByString(search);
			authorSearch = authorRe.getSearchAuthorByString(search);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	//	List<Song> songSearch = searchRe.getSearchSongByString(search);
	//	List<Author> authorSearch = searchRe.getSearchAuthorByString(search);
		HttpSession session = request.getSession();
		if(albumSearch == null && songSearch == null && authorSearch == null)
		{
			
			String message = "Sorry, there is no result for your search";
			request.setAttribute("noResult", message);	
			request.setAttribute("result", result);
		}
		else
		{
			if(albumSearch != null)
				request.setAttribute("albumResult", albumSearch);
			if(songSearch != null)
				request.setAttribute("songResult", songSearch);
			if(authorSearch != null)
				request.setAttribute("authorResult", authorSearch);
		}
		this.getServletContext().getRequestDispatcher("/search.jsp").forward(request, response);		
	}


}

