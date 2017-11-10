<%@page import="miniSrc.CompanyVO"%>
<%@page import="miniSrc.CompanyDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("EUC-KR");

	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>



</head>
<body>
<form action="../../projectSearch/first/projRegisterReg.jsp" method="post" enctype="multipart/form-data"><!-- ../../login/third/index2.jsp -->
	<table border=1>
	
		<tr>
			<td>프로젝트명</td>
			<td><input type="text" name="com_Name" /></td>
		</tr>
		<tr>
			<td>주요사업내용</td>
			<td><textarea rows="5" cols="60" name="info">300자 이내로 써 주세요</textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="등록"/> <!-- class="sch"  -->
			<input type="reset" value="초기화" class="sch"/>
			</td>
		</tr>
	</table>
</form>
</body>
</html>