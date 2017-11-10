<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>jspProj</title>
</head>
<body>
안뇽
<%
	Date now = new Date();
%>
현재시각:<%=now %><br>
현재시각:<% out.print(now); %><br>
<br>basic<br>
<a href="basic/diary1.html">diary1</a>
<a href="basic/diary2.jsp">diary2</a>
<a href="basic/diary3.jsp">diary3</a>
<a href="basic/diaryWork.jsp">diaryWork</a>
<br>request<br>
<a href="request/info.jsp">info</a>
<%
	String aaa = URLEncoder.encode("한글", "euc-kr");
%>
<a href="request/aaa.jsp?name=<%=aaa %>&age=29">aaa</a>
<!-- <a href="request/joinForm.jsp">joinForm</a> -->
<a href="request/memList.jsp">memList</a>
<br>response<br>
<a href="response/a.jsp">a</a>
<a href="response/movie/reservation.jsp">영화예매</a>
<a href="response/join/juminForm.jsp">회원가입</a>
<a href="response/homework/">회원가입숙제</a>
<br>out<br>
<a href="out/out1.jsp">out1</a>
<a href="out/out2.jsp">out2</a>
<br>application<br>
<a href="application/info.jsp">info</a>
<a href="application/set.jsp">set</a>
<a href="application/get.jsp">get</a>
<a href="application/examForm.jsp">examForm</a>
<br>implicit<br>
<a href="implicit/config.jsp">config</a>
<br>include<br>
<a href="include/all.jsp?name=abcd&age=29">all</a>
<a href="include/template.jsp">template</a>
<a href="include/directive/all.jsp">directive</a>
<a href="include/directive/container.jsp">container</a>
<br>forward<br>
<a href="forward/a.jsp?name=abcd&age=29">a</a>
<a href="ffCompany/center/first/index.jsp">ffCompany</a>
<a href="cateCompany/center/first/index.jsp">cateCompany</a>
<br>cookie<br>
<a href="cookie/addCookie.jsp">addCookie</a>
<a href="cookie/getCookie.jsp">getCookie</a>
<a href="cookie/modifyCookie.jsp">modifyCookie</a>
<a href="cookie/deleteCookie.jsp">deleteCookie</a><br>
<a href="cookie/pathCookie.jsp">pathCookie</a>
<a href="cookie/path1/getCookie.jsp">cookie/path1</a>
<a href="cookie/path2/getCookie.jsp">cookie/path2</a>
<a href="cookie/getCookie.jsp">cookie</a>
<a href="getCookie.jsp">/</a>
<a href="cookie/pathDeleteCookie.jsp">pathDeleteCookie</a><br>
<a href="cookie/maxAge.jsp">maxAge</a>
<a href="cookie/getCookie.jsp">getCookie</a><br>
<a href="cookie/cookieBox/make.jsp">make</a>
<a href="cookie/cookieBox/get.jsp">get</a>
<a href="cookie/cookieBox/modify.jsp">modify</a>
<a href="cookie/cookieBox/delete.jsp">delete</a>
<a href="cookie/cookieBox/main.jsp">로그인</a>
<br>session<br>
<a href="session/info.jsp">info</a>
<a href="session/set1.jsp">set1</a>
<a href="session/set2.jsp">set2</a>
<a href="session/get.jsp">get</a>
<a href="session/remove.jsp">remove</a>
<a href="session/invalidate.jsp">invalidate</a>
<a href="session/login/main.jsp">로그인</a>
<br>useBean<br>
<a href="jdbc/useBean.jsp">useBean</a>
<a href="jdbc/getBean.jsp">getBean</a>
<a href="jdbc/studentForm.jsp">studentForm</a>
<a href="jdbc/stListForm.jsp">stListForm</a>
<a href="jdbc/stListForm2.jsp">stListForm2</a>
<a href="jdbc/examListForm.jsp">examListForm</a>
<br>dbcp<br>
<a href="dbcp/index.jsp">index</a>
<br>file<br>
<a href="file/uploadForm.jsp">uploadForm</a>
<a href="file/memList.jsp">memList</a>
<a href="file/examListForm.jsp">examListForm</a>
<a href="file/homeworkForm.jsp">homeworkForm</a>
<br>el<br>
<a href="el/calc.jsp">연산자</a>
<a href="el/core.jsp">core</a>
<a href="el/core2.jsp">core2</a>
<a href="el/if.jsp">if</a>
<a href="el/foreach.jsp">foreach</a>
<a href="el/forTokens.jsp">forTokens</a>
<a href="el/catch.jsp">catch</a><br>
<a href="el/fmtMessage.jsp">fmtMessage</a>
<br>세미프로젝트<br>
<a href="fourRancer/center/first/index.jsp">세미프로젝트</a>
<a href="kbj\Freejoin\FreejoinForm.jsp">범준이형</a>
</body>
</html>


