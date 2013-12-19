<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<c:if test="${searchResult == null}">
<div>
	<% 
	String attribut = (String) request.getAttribute("noResult");
		out.println(attribut);
		%>
</c:if>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CD</title>
<link rel="stylesheet" href="dec/css/home.css"/>
</head>
<body>
<div class ="Layout">
<div class="header" style="background:url(dec/img/cdworld1.png)" ><%@include file="header.jsp"%></div>
<div class="nav"><%@include file="nav.jsp"%></div>
<div class="content">
<form method="get" action="searchresult">
<table align="center" style="font-family:Times">
<tr>
<td>album:
</td>
</tr>
<tr>
<td>year:
</td>
</tr>
<tr>
<td>author:</td>
</tr>
</table>
</form>
</div>
<div class="bot">
<%@include file="bot.jsp"%>
</div>
</div>
</body>
</html>