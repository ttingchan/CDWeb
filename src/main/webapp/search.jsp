<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div >
<form method="get" action =SearchServlet >
	<input type="text" name="search" />
	<input type="submit" name="submit" value="submit"/>
</form>
</div>
<div>

	<p>
		<%
		String attribut = (String) request.getAttribute("noResult");
		out.println(attribut);
		%>
	</p>
</div>
</body>
</html>