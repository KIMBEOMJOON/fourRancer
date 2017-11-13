<%@page import="miniSrc.PersonVO"%>
<%@page import="miniSrc.PersonDAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<%@page import="java.net.URLEncoder"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    <%
     /* request.setCharacterEncoding("euc-kr");  */  
    
    String encodd = request.getParameter("Location");
   String wowowow = URLEncoder.encode(encodd, "euc-kr");
          
    System.out.print("아ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ"+wowowow); 
    PersonDAO dao = new PersonDAO();
	PersonVO vo = dao.search2(request.getParameter("Location"));
			
	%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<title>Insert title here</title>
</head>
<body>
<%-- <c:forEach var = "nono"  begin="0" end="${vo.getUser_id() }"> --%>
<table border="">
	<tr>
		<td>id</td><td><%=vo.getUser_id()%></td>
	</tr>
	<tr>
		<td>이름</td><td><%=vo.getUser_name()%></td>
	</tr>
	<tr>
		<td>e-mail</td><td><%=vo.getUser_email()%></td>
	</tr>
	<tr>
		<td>전화번호</td><td><%=vo.getUser_phone()%></td>
	</tr>
	<tr>
		<td>지역</td><td><%=vo.getLocation()%></td>
	</tr>
</table>
<%-- </c:forEach> --%>
</body>
</html>