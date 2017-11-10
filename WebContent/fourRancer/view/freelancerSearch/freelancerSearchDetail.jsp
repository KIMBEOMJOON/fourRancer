<%@page import="miniSrc.PersonVO"%>
<%@page import="miniSrc.PersonDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    request.setCharacterEncoding("EUC-KR");
    
    
   
    System.out.print("아ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ"+(request.getParameter("Specialty")));
    PersonDAO dao = new PersonDAO();
	PersonVO vo = dao.search(request.getParameter("Specialty"));
	
	
	
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
		<td>id</td><td><%=vo.getUser_id()%></td>
	</tr>
</table>

</body>
</html>