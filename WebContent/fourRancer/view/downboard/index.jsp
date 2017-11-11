
<%@page import="miniSrc.DownloadVO"%>
<%@page import="miniSrc.DownloadDAO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

	DownloadDAO dao = new DownloadDAO();
	ArrayList<DownloadVO> mems = dao.list();
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border="">
	<tr>
		<td>글번호</td>
		<td>글제목</td>
		<td>등록일</td>
	</tr>

<% for(DownloadVO vo : mems) {%>
<tr>
		<td><a href="detail.jsp?id=<%=vo.getId()%>"><%=vo.getId() %></a></td>
		<td width="150px"><%=vo.getTitle() %></td>
		<td><%=vo.getRegDate() %></td>
	</tr>

<%} %>
	<tr>
		<td colspan="3" align="right">
			<a href="uploadForm.jsp">글등록</a>
		</td>
	</tr>
</table>
</body>
</html>