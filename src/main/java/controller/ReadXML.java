package controller;

import java.io.*;
import java.sql.*;
import java.util.List;

import org.jdom.*;
import org.jdom.input.*;
import org.jdom.input.SAXBuilder.*;

import Entity.*;


public class ReadXML 
{
	public void readIntoSQL() throws Exception
	{
		String filePath = "";
		SAXBuilder sb = new SAXBuilder();
		Document doc = sb.build(new FileInputStream(filePath));
		Element root = doc.getRootElement();
		int size = root.getContentSize();
		List<Album> albums = root.getChildren();
		SQLConnection conn = new SQLConnection();
		Statement stmt = conn.Connection().createStatement();
		
		for(int i=0;i<size;i++)
		{
			
		}
	}
}
