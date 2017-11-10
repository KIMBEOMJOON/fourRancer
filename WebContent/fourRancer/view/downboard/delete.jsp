
<%@page import="miniSrc.DownloadDAO"%>
<%@page import="miniSrc.DownloadVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

 
            
            
<%
	
	request.setCharacterEncoding("euc-kr");
	
	DownloadVO mem = new DownloadVO();
	mem.setId(Integer.parseInt(request.getParameter("id")));
	mem.setPw(request.getParameter("pw"));
	
	
	mem.setPath(request.getRealPath("downloadfile"));
	mem.setPath("C:\\Users\\user\\Documents\\ggg\\miniProj\\WebContent\\kbj\\download\\downloadfile");
	
	String msg = "pw가 일치하지 않습니다.";
	String url = "detail.jsp?id="+request.getParameter("id");
	
	if(new DownloadDAO().delete(mem))
	{
		msg = "삭제 되었습니다";
		url = "index.jsp";
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