<%@page import="miniSrc.PersonVO"%>
<%@page import="miniSrc.ProjectVO"%>
<%@page import="miniSrc.ProjectDAO"%>
<%@page import="miniSrc.CompanyVO"%>
<%@page import="miniSrc.CompanyDAO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");

	ProjectDAO dao = new ProjectDAO();
	ProjectVO vo = new ProjectVO();
	dao.insert(vo);
	
	
	 String nowUri = request.getRequestURI().substring(
			(request.getContextPath()+"/fourRancer/").length(),
			request.getRequestURI().length()-4
			) ; 
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src='../js/member.js'></script>
</head>
<body>
<table border="">

	<tr>
		<td>회사명</td><td><%=vo.getCom_id()%></td>
	</tr><tr>
		<td>프로젝트명</td><td><%=vo.getP_id()%></td>
	</tr><tr>
		<td>사용툴</td><td><%=vo.getPro_subject()%></td>
	</tr><tr>
		<td>작업기간(개월)</td><td><%=vo.getTerm()%></td>
	</tr><tr>
		<td>작업난이도</td><td><%=vo.getRank()%></td>
	</tr><tr>
		<td>참가인원수</td><td><%=vo.getInput_num()%></td>
	</tr><tr>
		<td>총 지급 가능 페이</td><td><%=vo.getPro_salary()%></td>
	</tr>
	<!-- C:\Users\user\eclipse-workspace\jspProj\WebContent\fourRancer\view\login\fileUp -->

	<tr>
		<td colspan="2" align="right">
			<a href="center/first/index.jsp">홈으로</a>
		</td>
	</tr>
</table>
</body>
</html>