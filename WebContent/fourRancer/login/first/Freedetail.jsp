%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file="../../inc/menudata.jsp" %>

<%-- <%
	System.out.println(request.getAttribute("cate"));
request.setAttribute("data",  new CenterDAO().list((String)request.getAttribute("cate")));
%> --%>

<jsp:forward page="../../view/template.jsp"></jsp:forward>