<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
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
<form action="freelancerSearchReg.jsp" method="post">
	<table border=1>
		<tr>
			<td>지역</td>
			<td><select name="aaa" >
					<option value="LabVIEW">LabVIEW</option>
					<option value="Git">Git</option>
					<option value="TUXEDO">TUXEDO</option>
				</select>
			</td>
		</tr>
		<tr>
			
			<td colspan="2">
			<input type="submit" value="검색" /></td>
		</tr>
	</table>
</form>
</body>
</html>