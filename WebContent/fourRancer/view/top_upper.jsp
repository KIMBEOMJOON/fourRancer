<%@page import="java.util.LinkedHashMap"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
    
    
    
<%-- <%
	LinkedHashMap<String, String>top=
	(LinkedHashMap<String, String>)request.getAttribute("top");

	String loginPage = (String)request.getAttribute("loginPage");
%> --%>    

<a class="navbar-brand" href="../../center/first/index.jsp"><img src="../../center/first/joon.jpg"></a>
<table width="100%">
<%-- <c:if test="${mem!=null} }"> --%>
	<tr>
		<td colspan="${top.size}" align="right">
			<jsp:include page="${loginPage}"/>
		</td>
	</tr>
<%-- 	</c:if>
	<c:otherwise> --%>
	<tr>
		<td colspan="${top.size}" align="right">
			<jsp:include page="${logPage}"/>
		</td>
	</tr>
<%-- 	</c:otherwise> --%>
	<%-- 
	 <tr align="center">
		<c:forEach var = "ea" items = "top_lower">
			<td><a href="../../${ea.key}/first/index.jsp">${ea.value}</a></td>
		</c:forEach>
		
		<% for(String key : top.keySet()) {%>
		<td><a href="../../<%=key%>/first/index.jsp"><%=top.get(key) %></a></td>
		<%} %>
	</tr> --%>
</table>

