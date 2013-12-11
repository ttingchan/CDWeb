package servlet;

//import java.sql.Date;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entity.User;
import Entity.UserDAO;

public class InscriptionServlet extends HttpServlet {

String date1;
Date birthday;
public void doGet(HttpServletRequest request, HttpServletResponse response) 
			           throws ServletException, java.io.IOException {

try
{	    

     User user = new User();
     user.setNickname(request.getParameter("username"));
     user.setPsw(request.getParameter("password"));
     user.setFirstname(request.getParameter("firstname"));
     user.setLastName(request.getParameter("lastname"));
     date1=request.getParameter("birthday");
     birthday= new SimpleDateFormat("MMMM d, yyyy", Locale.ENGLISH).parse(date1);
     user.setBirthday(birthday);
     user.setMail(request.getParameter("mail"));
     user.setAddress(request.getParameter("adress"));
     user.setSex(request.getParameter("sex"));
     user.setCity(request.getParameter("city"));
     user.setCountry(request.getParameter("country"));
     user.setZip(request.getParameter("zip"));
     user.setPhonenum(request.getParameter("phonenum"));
     user = UserDAO.register(user); 
     
	 System.out.print("2");
	   		
     if (user.isValid())
     {
	        
          HttpSession session = request.getSession(true);	    
          session.setAttribute("currentSessionUser",user); 
          response.sendRedirect("userRegister.jsp"); //logged-in page      		
     }
	        
     else 
          response.sendRedirect("invalidRegister.jsp"); //error page 
} 
		
		
catch (Throwable theException) 	    
{
     System.out.println(theException); 
}
       }
	}
