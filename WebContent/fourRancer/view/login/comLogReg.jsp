<%@page import="miniSrc.CompanyDAO"%>
<%@page import="miniSrc.CompanyVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

CompanyVO vo = new CompanyVO();
vo.setCom_id(request.getParameter("memId"));
vo.setCom_pw(request.getParameter("memPw"));//vo�� �Ƶ������̵鰡����

String msg = "id�� pw�� ��ġ���� �ʽ��ϴ�.";
String url = "../../center/first/index.jsp";/* "+request.getParameter("goUrl"); */

CompanyVO res = new CompanyDAO().login(vo);//login�� ���ϴ� CompanyDAO�� VO�� ����


if(res!=null)
{
	session.setAttribute("mem", res);
	session.setAttribute("member", res.getCom_name());
	msg = res.getCom_name()+"�� �α��� �Ǿ����ϴ�.";
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