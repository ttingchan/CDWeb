package servlet;

import java.io.IOException;
import java.sql.SQLException;
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
		List<Song> songSearch = null;
		List<Album> albumSearch = null;
		try {
			albumSearch = searchRe.getSearchAlbumByString(search);
			songSearch = songRe.getSearchSongByString(search);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	//	List<Song> songSearch = searchRe.getSearchSongByString(search);
	//	List<Author> authorSearch = searchRe.getSearchAuthorByString(search);
		HttpSession session = request.getSession();
		if(albumSearch == null && songSearch == null /*&& authorSearch == null*/)
		{
			String message = "Sorry, there is no result for your search";
			request.setAttribute("noResult", message);
			request.setAttribute("searchResult", albumSearch);
			this.getServletContext().getRequestDispatcher("/search.jsp").forward(request, response);
		}
		else
		{
			
		}
		
	}


}

