<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "Entity.*"%>
<%@ page language="java" import="java.util.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<c:when test="${result == true}">
<div>
	<% 
	String attribut = (String) request.getAttribute("noResult");
		out.println(attribut);
		%>
</c:when>

<c:otherwise>
<%
	List<Album> listAlbum = (List) request.getAttribute("albumResult");
	List<Song> listSong = (List) request.getAttribute("songResult");
	List<Song> listAuthor = (List) request.getAttribute("authorResult");

%>


<div class="content">
<h1>Here is the result of search</h1>
<c:if test = "${albumSearch != null }">
<h2>the Album result</h2>
<table align="center" style="font-family:Times" width="300px" height="100px">

	<tr>
	<th>Album Name</th>
	<th>Price</th>
	<th>Date</th>
	<th>Description</th>
	</tr>

	<%
		for(int i=0; i<listAlbum.size();i++)
		{
			Album album = (Album) listAlbum.get(i);
	%>
	<tr>
		<td align="center"><a href="AlbumServlet?showCD= '<%=album.getName() %>' "><%=album.getName() %></a></td>
		<td align="center"><%=album.getPrice() %></td>
		<td align="center"><%=album.getIssuingDate() %></td>
		<td align="center"><%=album.getDescription() %></td>
	</tr>
	<%
		}
	%>
</table>
</c:if>

<c:if test = "${songSearch != null }">
<h2>the Song result</h2>
<table align="center" style="font-family:Times" width="300px" height="100px">

	<tr>
	<th>Song Name</th>
	</tr>

	<%
		for(int i=0; i<listAlbum.size();i++)
		{
			Album album = (Album) listAlbum.get(i);
	%>
	<tr>
		<td align="center"><%=album.getName() %></td>
	</tr>
	<%
		}
	%>
</table>
</c:if>

<c:if test = "${authorSearch != null }">
<h2>the Author result</h2>
<table align="center" style="font-family:Times" width="300px" height="100px">

	<tr>
	<th>Author Name</th>
	</tr>

	<%
		for(int i=0; i<listAlbum.size();i++)
		{
			Album album = (Album) listAlbum.get(i);
	%>
	<tr>
		<td align="center"><%=album.getName() %></td>
	</tr>
	<%
		}
	%>
</table>
</c:if>
</c:otherwise>
</div>


