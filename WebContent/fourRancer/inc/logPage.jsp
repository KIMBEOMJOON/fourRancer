<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

	

	String logPage = "login/logReg.jsp";

	if(session.getAttribute("company")!=null)
	{
		logPage="login/main.jsp";
	}
	request.setAttribute("logPage", logPage);
	
%>