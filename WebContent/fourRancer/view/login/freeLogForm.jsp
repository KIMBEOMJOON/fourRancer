<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
개인로그인
	<form action="../../login/second/comLogReg.jsp">
		<input type="hidden" name="goUrl" value="${nowUrl }" />
		id:<input type="text" name="memId"/> <%-- value="${memId }" --%>
		pw:<input type="text" name="memPw" />
		<input type="submit" value="로그인" />
	</form>
</body>
</html>