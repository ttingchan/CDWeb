package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SQLConnection 
{

	private Connection connect = null;
	private String url = "jdbc:mysql://localhost:8088//cd";
	private String usr = "root";
	private String pwd = "";
	
	public Connection Connection()throws Exception
	{
		try{
			connect = DriverManager.getConnection(url, usr, pwd);
			
		}catch (SQLException e){
			System.out.println("SQLException:" + e.getMessage());
			System.out.println("SQLState" + e.getSQLState());
			System.out.println("VendoError:" + e.getErrorCode());
		}
		return connect;
	}
	

}
