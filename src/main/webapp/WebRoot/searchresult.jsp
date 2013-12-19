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
<table align="center" style="font-family:Times">

<tr>
<td><strong>album:</strong></td><td>dff</td>
<td><strong>type:</strong></td><td>Pop</td>
<td><strong>year:</strong></td><td>2010</td>
<td><strong>author:</strong></td><td>yves</td>
</tr>

</table>
</div>


