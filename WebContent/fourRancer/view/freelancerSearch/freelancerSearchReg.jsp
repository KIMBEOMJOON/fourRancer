<%@page import="miniSrc.PersonDAO"%>
<%@page import="miniSrc.PersonVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
    <%
    request.setCharacterEncoding("EUC-KR");
   
    PersonDAO dao = new PersonDAO();
	   PersonVO vo = new PersonVO();
	  
	  
	   
	vo.setSpecialty(request.getParameter("aaa"));	
	
	String mmmmm = request.getParameter("aaa");
	
	
	System.out.print("??????????????"+mmmmm);
	
	/*  PersonDAO dao = new PersonDAO();
		dao.insert(vo); */
    %>
    
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	location.href = 'freelancerSearchDetail.jsp?Specialty=<%=mmmmm%>';
</script>	
</body>
</html>