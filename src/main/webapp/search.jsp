<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CD</title>
<link rel="stylesheet" href="dec/css/home.css"/>
</head>
<body>
<div class ="Layout">
	<div class="header" style="background:url(dec/img/cdworld1.png)" >
		<%@include file="WebRoot/header.jsp"%>
	</div>
	<div class="nav"><%@include file="WebRoot/nav.jsp"%></div>
	<div class="content">
		<div >
			<form method="get" action =SearchServlet >
				<input type="text" name="search" />
				<input type="submit" name="submit" value="submit"/>
			</form>
		</div>
	</div>
	<div class="bot">
		<%@include file="WebRoot/bot.jsp"%>
	</div>
</div>
</body>
</html>

