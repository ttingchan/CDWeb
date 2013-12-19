package Entity;

import java.sql.Connection;
//import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.springframework.jdbc.core.RowMapper;
import Entity.ConnectionManager;
import Entity.User;


public class UserDAO implements RowMapper<User>{
	  static Connection currentCon = null;
	   static ResultSet rs = null;  
		
	public User mapRow(ResultSet rs, int rownum) throws SQLException {
		// TODO Auto-generated method stub
		User user = new User();
		user.setId(rs.getInt("id"));
		user.setNickname(rs.getString("nickname"));
		user.setPsw(rs.getString("psw"));
		user.setFirstname(rs.getString("firstname"));
		user.setLastName(rs.getString("lastname"));
		user.setAddress(rs.getString("address"));
		user.setCity(rs.getString("city"));
		user.setCountry(rs.getString("country"));
		user.setZip(rs.getString("zip"));
		user.setBirthday(rs.getDate("birthday"));
		user.setPhonenum(rs.getString("phonenum"));
		return user;
	}
	public static User register(User bean)
	{
		Statement stmt = null;  
		//String username= bean.
		String username=bean.getNickname();
		String password=bean.getPsw();
		String firstname=bean.getFirstname();
		String lastname=bean.getLastname();
		java.util.Date  birthday=bean.getBirthday();
		String mail=bean.getMail();
		String address=bean.getAddress();
		String sex=bean.getSex();
		String city=bean.getCity();
		String country=bean.getCountry();
		String zip=bean.getZip();
		String phonenum=bean.getPhonenum();
		String searchQuery ="select * from user where username='"
                + username
                + "' AND password='"
                + password
                + "'";
		String Query="insert into cd.user values("+username+","+password+","+firstname+","+lastname+","+birthday+","+mail+","+address+","+sex+","+city+","+country+","+zip+","+phonenum+");";
		try{
			  currentCon = ConnectionManager.getConnection();
		      stmt=currentCon.createStatement();
		      stmt.executeUpdate(Query);	
		      rs = stmt.executeQuery(searchQuery);	        
		      boolean more = rs.next();
			       
		      // if user does not exist set the isValid variable to false
		      if (!more) 
		      {
		         System.out.println("Fail to register!");
		         bean.setValid(false);
		      } 
			        
		      //if user exists set the isValid variable to true
		      else if (more) 
		      {
		        firstname = rs.getString("firstName");
		        lastname = rs.getString("lastName");
			     	
		         System.out.println("Welcome " + firstname);
		         bean.setFirstname(firstname);
		         bean.setLastName(lastname);
		         bean.setValid(true);
		      }
		      
		}  catch (Exception ex) 
		   {
		      System.out.println("Update failed: An Exception has occurred! " + ex);
		   } 
			  
		return bean;
	}
	public static User login(User bean) {
		
	      //preparing some objects for connection 
	      Statement stmt = null;    
	      String username = bean.getNickname();    
	      String password = bean.getPsw();   
	      String searchQuery =
	            "select * from users where username='"
	                     + username
	                     + "' AND password='"
	                     + password
	                     + "'";
		    
	   // "System.out.println" prints in the console; Normally used to trace the process
	   System.out.println("Your user name is " + username);          
	   System.out.println("Your password is " + password);
	   System.out.println("Query: "+searchQuery);
		    
	   try 
	   {
		   
		  System.out.println("test");
	      currentCon = ConnectionManager.getConnection();
	      System.out.println("test1");
	      stmt=currentCon.createStatement();
	      rs = stmt.executeQuery(searchQuery);	        
	      boolean more = rs.next();
		       
	      // if user does not exist set the isValid variable to false
	      if (!more) 
	      {
	         System.out.println("Sorry, you are not a registered user! Please sign up first");
	         bean.setValid(false);
	      } 
		        
	      //if user exists set the isValid variable to true
	      else if (more) 
	      {
	    	  
	         String firstName = rs.getString("FirstName");
	         String lastName = rs.getString("LastName");
		     	
	         System.out.println("Welcome " + firstName);
	         bean.setFirstname(firstName);
	         bean.setLastName(lastName);
	         bean.setValid(true);
	      }
	   } 

	   catch (Exception ex) 
	   {
	      System.out.println("Log In failed: An Exception has occurred! " + ex);
	   } 
		    
	   //some exception handling
	   finally 
	   {
	      if (rs != null)	{
	         try {
	            rs.close();
	         } catch (Exception e) {}
	            rs = null;
	         }
		
	      if (stmt != null) {
	         try {
	            stmt.close();
	         } catch (Exception e) {}
	            stmt = null;
	         }
		
	      if (currentCon != null) {
	         try {
	            currentCon.close();
	         } catch (Exception e) {
	         }

	         currentCon = null;
	      }
	   }

	return bean;
		
	   }	

}
