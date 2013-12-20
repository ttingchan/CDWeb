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

<div class="content">
<table align="center" style="font-family:Times" width="300px" height="100px">
<h3 align="center">Author</h3>
<tr>
<th>Author</strong></th><th>Album</th>
</tr>
<tr><td align="center">Yves</td><td align="center">album</td></tr>


</table>
<h3 align="center">Album</h3>
<table align="center" style="font-family:Times" width="300px" height="100px">

<tr>
<th>Album</strong></th><th>Price</th><th>Type</th>
</tr>
<tr><td align="center">album</td><td align="center">price</td><td align="center">Pop</td></tr>


</table>
<h3 align="center">Song</h3>
<table align="center" style="font-family:Times" width="300px" height="100px">

<tr>
<th>Song</strong></th><th>Album</th>
</tr>
<tr><td align="center">twinkle</td><td align="center">album</td></tr>


</table>
</div>


