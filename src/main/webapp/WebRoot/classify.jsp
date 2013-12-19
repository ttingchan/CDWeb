<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>

<!DOCTYPE html>
<html>
<head><meta charset="utf-8" />
<title>CD</title>
<link rel="stylesheet" href="dec/css/home.css"/>
</head>
<body>
<div class ="Layout">
<div class="header" style="background:url(dec/img/cdworld1.png)"><%@include file="header.jsp"%></div>
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
<div class="bot"><%@include file="bot.jsp"%>
</div>>
</div>
</body>
</html>