package servlet;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AlbumServlet extends HttpServlet 
{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	{
		String str = request.getParameter("showCD");
		ServletContext sc = getServletContext();
//		String path = sc.getServletNames()request;
		
	}
}
