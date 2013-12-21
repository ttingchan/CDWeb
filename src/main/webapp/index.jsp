<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>

<!DOCTYPE html>
<html>
<head><meta charset="utf-8" />
<title>CD</title>
<link rel="stylesheet" type="text/css" href="WebRoot/dec/css/home.css"/>
</head>
<body><!-- background="WebRoot/dec/img/background.jpg" -->

<div class ="Layout">
<div class="header" style="background:url(WebRoot/dec/img/cdworld1.png)" ><%@include file="WebRoot/header.jsp"%>
<!--<img src="WebRoot/dec/img/cd1.png" width="100%" height="100%"/> -->

</div>
<div class="nav">
<!-- <h1>navigator</h1>-->
<%@include file="WebRoot/nav.jsp"%>
</div>



<div class="content">
</br></br></br>
	<form method="get" action=SearchServlet align="center">
       <input type="text" class="search" name="search"/>&nbsp&nbsp
       <input type="submit" value="search CD" class="searchbutton1" style="font-size:30px;font-family:Times"/>   
       
       </form></br></br></br>
       <h2 align="center">You can search by author, type, song and album</h2>
<h2 align="center"><a href="login.jsp">LOGIN NOW</a></h2>
</div>

<div class="bot">
<%@include file="WebRoot/bot.jsp"%>
</div>
</div>
</body>
</html>