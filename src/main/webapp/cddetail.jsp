<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CD</title>
<link rel="stylesheet" type="text/css" href="WebRoot/dec/css/home.css"/>
</head>
<body>
<div class ="Layout">
<div class="header" style="background:url(dec/img/cdworld1.png)" ><%@include file="WebRoot/header.jsp"%>
<!--<img src="WebRoot/dec/img/cd1.png" width="100%" height="100%"/> -->

</div>
<div class="nav">
<!-- <h1>navigator</h1>-->
<%@include file="WebRoot/nav.jsp"%>
</div>



<div class="content">
<form method="get" action="searchresult">
<table align="center" style="font-family:Times">
<tr>
<td>pic1
</td>
<td>pic2</td>
</tr>
<tr>
<td>year:
</td>
</tr>

</table>
</form>
</div>

<div class="bot">
<%@include file="WebRoot/bot.jsp"%>
</div>
</div>
</body>
</html>