package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entity.Album;
import Entity.AlbumDAO;

public class AlbumServlet extends HttpServlet 
{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		String str = request.getParameter("showCD");
		ServletContext sc = getServletContext();
		AlbumDAO albumDetail = new AlbumDAO();
		Album album = new Album();
		try {
			album = albumDetail.getAlbumContent(str);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(album != null)
		{
			request.setAttribute("CDdetail", album);
			response.sendRedirect("cddetail.jsp?cd="+album.getName()+"");
		}
//		String path = sc.getServletNames()request;
		
	}
}
