<%@page import="miniSrc.CompanyDAO"%>
<%@page import="miniSrc.CompanyVO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");

	CompanyVO vo = new CompanyVO();
	
	vo.setCom_name(request.getParameter("com_Name"));
	vo.setInfo(request.getParameter("info"));
		
	CompanyDAO dao = new CompanyDAO();
	dao.insert(vo);
		
	%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	alert('회원가입 되었습니다');
	location.href = '../../projectSearch/projRegisterDetail.jsp?com_id=<%=vo.getCom_id()%>';
</script>
</body>
</html>