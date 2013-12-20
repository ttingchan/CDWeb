<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Entity.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CD</title>
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
<table align="center" style="font-family:Times">
	<%
		Album album = (Album) session.getAttribute("CDdetail");
	%>
<tr>
	<td rowspan=6>
		<img src=<%=album.getImgURL()%> width="100%">
	</td>
	<td>
		<table>
			<tr>
				<td><strong></strong></td>
				<td><%=album.getIssuingDate() %></td>
			</tr>
			
			<tr>
				<td><strong>author:</strong></td>
				<td><% %></td>
			</tr>
				
			<tr>
				<td><strong>Song:</strong></td>
				<td>1.song1</td>
			</tr>
			
			<tr>
				<td><strong>Description</strong></td>
				<td><%=album.getDescription() %></td>
			</tr>
		</table>
	</td>
</tr>
	</table>
</div>

<div class="bot">
<%@include file="WebRoot/bot.jsp"%>
</div>
</div>
</body>
</html>