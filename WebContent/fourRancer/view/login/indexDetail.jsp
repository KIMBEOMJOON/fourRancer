<%@page import="miniSrc.CompanyVO"%>
<%@page import="miniSrc.CompanyDAO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	CompanyDAO dao = new CompanyDAO();
	CompanyVO vo = dao.detail(request.getParameter("com_id"));
	request.setCharacterEncoding("EUC-KR");
	
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
		<td>id</td><td><%=vo.getCom_id()%></td>
	</tr><tr>
		<td>회사명</td><td><%=vo.getCom_name()%></td>
	</tr><tr>
		<td>창립일</td><td><%=vo.getFound_day()%></td>
	</tr><tr>
		<td>대표자</td><td><%=vo.getRepresent() %></td>
	</tr><tr>
		<td>사업자등록번호</td><td><%=vo.getEnroll_num()%></td>
	</tr><tr>
		<td>주요사업내용</td><td><%=vo.getInfo()%></td>
	</tr><tr>
		<td>담당자이름</td><td><%=vo.getCharger() %></td>
	</tr><tr>
		<td>담당자번호</td><td><%=vo.getChar_phone() %></td>
	</tr><tr>
		<td>대표전화</td><td><%=vo.getCom_phone()%></td>
	</tr><tr>
		<td>주소</td><td><%=vo.getCom_address()%></td>
	</tr><tr>
		<td>이메일</td><td><%=vo.getCom_email() %></td>
	</tr><tr>
		<td>홈페이지</td><td><%=vo.getHomepage()%></td>
	</tr><tr>
		<td>과거 프로젝트</td><td><%=vo.getCom_proj()%></td>
	</tr><tr>
		<td>로고</td><td><img src="fileUp/<%=vo.getLogo()%>" width="150" alt="나오냐"></td>
	</tr>
	<!-- C:\Users\user\eclipse-workspace\jspProj\WebContent\fourRancer\view\login\fileUp -->

	<tr>
		<td colspan="2" align="right">
			<a href="indexList.jsp">회원목록</a>
			<a href="indexDelForm.jsp?com_id=<%=vo.getCom_id() %>">회원탈퇴</a>
			<a href="indexModiForm.jsp?com_id=<%=vo.getCom_id() %>">정보수정</a>
		</td>
	</tr>
</table>
</body>
</html>