<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>

<!DOCTYPE html>
<html>
<head><meta charset="utf-8" />
<title>CD</title>
<link rel="stylesheet" type="text/css" href="WebRoot/dec/css/home.css"/>
</head>
<body ><!-- background="WebRoot/dec/img/background.jpg" -->

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
<td>pic1
</td>
<td>pic2</td>
</tr>
<tr>
<td>year:</td>
<td>year:</td>
</tr>
<tr>
<td>author:</td>
<td>author:</td>
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