<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "Entity.*"%>
<%@ page language="java" import="java.util.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CDLIST</title>
<link rel="stylesheet" type="text/css" href="WebRoot/dec/css/home.css"/>
</head>
<body>
<div class ="Layout">
<div class="header" style="background:url(WebRoot/dec/img/cdworld1.png)" ><%@include file="WebRoot/header.jsp"%>
<!--<img src="WebRoot/dec/img/cd1.png" width="100%" height="100%"/> -->

</div>
<div class="nav">
<!-- <h1>navigator</h1>-->
<%@include file="WebRoot/nav.jsp"%>
</div>



<div class="content">
<table align="center" style="font-family:Times" width="300px" height="100px">
<h3 align="center">CD</h3>
<tr>
	<th>Album Name</th>
	<th>Price</th>
	<th>Date</th>
	<th>Description</th>
</tr>
<%
	List<Album> list = (List) session.getAttribute("CDList");
	System.out.println(list.size());
	for(int i=0; i< list.size();i++)
	{
		
		Album album = (Album) list.get(i);
		%>
<tr>
	<td align="center"><a href="AlbumServlet?showCD= '<%=album.getName() %>' "><%=album.getName() %></a></td>
	<td align="center"><%=album.getPrice() %></td>
	<td align="center"><%=album.getIssuingDate() %></td>
	<td align="center"><%=album.getDescription() %></td>
</tr>
<%} %>

</table>
</div>

<div class="bot">
<%@include file="WebRoot/bot.jsp"%>
</div>
</div>
</body>
</html>