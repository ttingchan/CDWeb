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
<div class="header" style="background:url(WebRoot/dec/img/cdworld1.png)" ><%@include file="WebRoot/header.jsp"%>
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
<td><img src="WebRoot/dec/img/cd1.jpg" width="100%">
</td>
<td width="300" style="word-wrap: break-word; word-break : break-all;">description....................................................................................................................................................................11111111111111111111111111111111111</td>

</tr>
<tr><td><strong>year:</strong></td><td>2011</td>
</tr>
<tr>
<td><strong>author:</strong></td><td>bla</td>
</tr>


<tr><td><strong>Song:</strong></td><td>1.song1</td>
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