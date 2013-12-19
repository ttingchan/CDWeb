package servlet;

import java.io.IOException;
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
		JdbcCDWebDAO searchRe = new JdbcCDWebDAO();
		List<Album> albumSearch = searchRe.getSearchAlbumByString(search);
		List<Song> songSearch = searchRe.getSearchSongByString(search);
		List<Author> authorSearch = searchRe.getSearchAuthorByString(search);
		HttpSession session = request.getSession();
		if(albumSearch == null && songSearch == null && authorSearch == null)
		{
			String message = "Sorry, there is no result for your search";
			request.setAttribute("noResult", message);
			this.getServletContext().getRequestDispatcher("WebRoot/search.jsp").forward(request, response);
		}
		else
		{
			
		}
		
	}


}

