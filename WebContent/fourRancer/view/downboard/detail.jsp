
<%@page import="miniSrc.DownloadVO"%>
<%@page import="miniSrc.DownloadDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	DownloadDAO dao = new DownloadDAO();
	DownloadVO vo = dao.detail(request.getParameter("id"));
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src='../js/member.js'>

function hideMenu() {
	alert("오른쪽 클릭<컨텍스트 메뉴>금지");
	return false;
}
document.oncontextmenu=hideMenu;
</script>

</head>
<body>
<table border="">
	<tr>
		<td>id</td><td><%=vo.getId() %></td>
	</tr>
	<tr>
		<td>제목</td><td><%=vo.getTitle() %></td>
	</tr>
	
	<%if(vo.getUpdownfile()!=null){ %>
	<tr>
		<td>파일</td>
		<td>
		<% if(vo.isImgChk()) {%>
		<img src="../../downboard/first/downloadfile/<%=vo.getUpdownfile() %>">
		<%} else{ %>
			<a href="download.jsp?updownload=<%=vo.getUpdownfile() %>&oridown=<%=vo.getOridown()%>"><%=vo.getOridown()%></a>
		<%} %>
		</td>

	</tr>
	<%} %>
	<tr>
		<td>등록일</td><td><%=vo.strRegDate() %></td>
	</tr><tr>
		<td>내용</td><td><%=vo.getContent().replaceAll("\r\n", "<br>") %></td>	
	</tr>


	<tr>
		<td colspan="2" align="right">
			<a href="index.jsp">글목록</a>
			<a href="deleteForm.jsp?id=<%=vo.getId() %>">글삭제</a>
			<a href="uploadmodify.jsp?id=<%=vo.getId() %>">글수정</a>
		</td>
	</tr>
</table>
</body>
</html>