<%@page import="miniSrc.CompanyDAO"%>
<%@page import="miniSrc.CompanyVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
	
	
	CompanyVO mem = new CompanyVO();
	
	mem.setCom_id(request.getParameter("com_id"));
	mem.setCom_pw(request.getParameter("com_pw"));
	
	
	String msg = "pw�� ��ġ���� �ʽ��ϴ�.";
	String url = "javascript:history.back()";
	
	
	if(new CompanyDAO().delete(mem))
	{
		msg = "Ż�� �Ǿ����ϴ�";
		url = "../../center/first/index.jsp";
	}
	
	%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	alert('<%=msg%>');
	location.href = '<%=url%>';
</script>
</body>
</html>