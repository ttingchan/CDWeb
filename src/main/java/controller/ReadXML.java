package controller;

import java.io.*;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.List;
import java.sql.Date;

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
		java.util.List albums = root.getChildren();
		SQLConnection conn = new SQLConnection();
		Statement stmt = conn.Connection().createStatement();
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
		
		for(int i=0;i<size;i++)
		{
			Element album = (Element) albums.get(i);
			Element nameEle = album.getChild("name");
			String name = nameEle.getText();
			Element authorEle = album.getChild("author");
			String author = authorEle.getText();
			Element issuingEle = album.getChild("issuing_date");
			Date issuing_date = (Date) sdf.parse(issuingEle.getText());
			Element desEle = album.getChild("description");
			String description = desEle.getText();
			Element priceEle = album.getChild("price");
			float price = Float.parseFloat(priceEle.getText());
			String sql = "INSERT INTO album('name','author','issuing_date','description','price') VALUES(name,author,issuing_date,description,price)";
			stmt.executeUpdate(sql);
		}
		conn.Connection().close();
		
	}
}
