<%@page import="java.io.FileInputStream"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String sys = request.getParameter("updownfile");
	String ori = request.getParameter("oridown");
	
	String upfile = request.getRealPath("downloadfile");
	upfile = "E:\\xp\\2017java\\Webwork\\fourRancercopy\\WebContent\\fourRancer\\downboard\\first\\downloadfile";
	
	String en = URLEncoder.encode(ori, "utf-8");
	response.setHeader("Content-Disposition", "attachment;filename="+en);
	
	out.clear();
	out = pageContext.pushBody();
	
	FileInputStream fis = new FileInputStream(upfile+"\\"+sys);
	ServletOutputStream sos = response.getOutputStream();
	
	byte [] buf = new byte[1024];
	
	while(fis.available()>0)
	{
		int len = fis.read(buf);
		sos.write(buf, 0, len);
	}
	
	sos.close();
	fis.close();
	

%>