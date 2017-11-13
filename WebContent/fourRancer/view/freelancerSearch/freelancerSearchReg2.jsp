<%@page import="miniSrc.PersonDAO"%>
<%@page import="miniSrc.PersonVO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
    <%@page import="java.net.URLEncoder"%>
    
    
    <%
    
   /*  request.setCharacterEncoding("utf-8"); */
    
   /*  String enco = request.getParameter("place");
    System.out.print("인코딩인코딩"+enco);
     String encoding1 = URLEncoder.encode(enco, "UTF-8") ; 
    System.out.print("인코딩되라쫌이시벌"+encoding1);*/     
   

 
   
    PersonDAO dao = new PersonDAO();
	   PersonVO vo = new PersonVO();	  
	   
	vo.setLocation(request.getParameter("place"));	
	
	String place = request.getParameter("place");
	
	System.out.print("??????????????"+place);
	
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
	location.href = 'freelancerSearchDetail2.jsp?Location=<%=place%>';
</script>	
</body>
</html>