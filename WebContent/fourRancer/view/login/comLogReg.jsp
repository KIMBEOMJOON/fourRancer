<%@page import="miniSrc.CompanyDAO"%>
<%@page import="miniSrc.CompanyVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

CompanyVO vo = new CompanyVO();
vo.setCom_id(request.getParameter("memId"));
vo.setCom_pw(request.getParameter("memPw"));//vo에 아디비번값이들가있음

String msg = "id와 pw가 일치하지 않습니다.";
String url = "../../center/first/index.jsp";/* "+request.getParameter("goUrl"); */

CompanyVO res = new CompanyDAO().login(vo);//login을 취하는 CompanyDAO를 VO에 넣음


if(res!=null)
{
	session.setAttribute("mem", res);
	session.setAttribute("member", res.getCom_name());
	msg = res.getCom_name()+"님 로그인 되었습니다.";
} /* 	else{
	if(url.contains("?"))
		url+="&";
	else
		url+="?";
	String comId=vo.getCom_id();
	url +="?memId="+comId;
} */
 

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		alert("<%=msg%>");
		location.href="<%=url%>";
	</script>
</body>
</html>