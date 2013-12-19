
<c:if test="${searchResult == null}">
<div>
	<% 
	String attribut = (String) request.getAttribute("noResult");
		out.println(attribut);
		%>
</div>
	
</c:if>
