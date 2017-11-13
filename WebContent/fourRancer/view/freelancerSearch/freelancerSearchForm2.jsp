<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
  /*  request.setCharacterEncoding("utf-8"); */
    %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="freelancerSearchReg2.jsp" method="post">
	<table border=1>
		<tr>
			<td>지역</td>
			<td><select name="place" >
					<option value="무관">무관</option>
					<option value="강북">강북</option>
					<option value="강동">강동</option>
					<option value="강남">강남</option>
					<option value="강서">강서</option>
					<option value="용인">용인</option>
					<option value="화성">화성</option>
					<option value="일산">일산</option>
					<option value="의정부">의정부</option>
					<option value="성남">성남</option>
					<option value="수원">수원</option>
					<option value="충북">충북</option>
					<option value="충남">충남</option>
					<option value="대전">대전</option>
					<option value="강원">강원</option>
					<option value="경북">경북</option>
					<option value="경남">경남</option>
					<option value="대구">대구</option>
					<option value="전북">전북</option>
					<option value="전남">전남</option>
					<option value="광주">광주</option>
					<option value="부산">부산</option>
					<option value="울산">울산</option>
					<option value="제주">제주</option>
					<option value="일본">일본</option>
					<option value="홍콩">홍콩</option>
					<option value="중국">중국</option>
					<option value="미국">미국</option>
										
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