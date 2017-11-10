<%@page import="miniSrc.CompanyVO"%>
<%@page import="miniSrc.CompanyDAO"%>
<%@page import="java.util.*"%>


<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	CompanyDAO dao = new CompanyDAO();
	CompanyVO vo = dao.detail(request.getParameter("com_id"));
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
function frmGo(){
	if(confirm('수정하시겠습니까 ?')){
		frm.submit();
	}
	
}
</script>
<style type="text/css">
.sch {
	width: 100px;
	height: 30px;
	border-radius: 15px;
}
</style>
</head>
<body>
	<!-- <form action="modifyReg.jsp" method="post" name="frm" enctype="multipart/form-data"> -->
	<form action="indexModiReg.jsp" method="post" name="frm" enctype="multipart/form-data">
	<table border=1>
		<tr>
			<td>id</td>
			<td><input type="text" name="com_id" size="10" maxlength="8"
			value="<%=vo.getCom_id()%>" />
			
			</td>
		</tr>
		<tr>
			<td>pw</td>
			<td><input type="password" name="com_pw" />pw확인
			<input type="password" name="pwConfirm" /></td>
		</tr>
		<tr>
			<td>회사명</td>
			<td><input type="text" name="com_Name"
			value="<%=vo.getCom_name()%>" /></td>
		</tr>
		<tr>
			<td>창립일</td>
				<td><input type="text" name="found_Day"
				value="<%=vo.getFound_Day()%>" />
			</td>
		</tr>
		<tr>
			<td>대표자명</td>
			<td><input type="text" name="represent" 
			value="<%=vo.getRepresent()%>"/></td>
			</tr>
		<tr>
			<td>사업자등록번호</td>
			<td><input type="text" name="enroll_num1" />-
			<input type="text" name="enroll_num2" />-
			<input type="text" name="enroll_num3" /></td>
		</tr>
		<tr>
			<td>회사 로고</td>
			<td><input type="file" name="logo"
			value="<%=vo.getLogo()%>" /></td>
		</tr>
		<tr>
			<td>주요사업내용</td>
			<td><textarea rows="5" cols="60" name="info" 
			value="<%=vo.getInfo()%>" >?</textarea></td>
		</tr>
		<tr>
			<td>담당자명</td>
			<td><input type="text" name="charger" 
			value="<%=vo.getCharger()%>"/></td>
			<!-- <td>
			<input type="checkbox" name="hobby" value="read"/>독서
			<input type="checkbox" name="hobby" value="game" checked="checked"/>게임
			<input type="checkbox" name="hobby" value="fish" checked="checked"/>낚시
			</td> -->
		</tr>
		<tr>
			<td>담당자 연락처</td>
			<td><select name="char_phone1">
					<option value="010" selected="selected">010</option>
					<option value="011">011</option>
					<option value="017">017</option>
					<option value="019">019</option>
				</select>-
			<input type="text" name="char_phone2" />-
			<input type="text" name="char_phone3" /></td>
			<!-- <td><input type="file" name="ff" /></td> -->
		</tr>
		<tr>
			<td>연락처(대표전화)</td>
			<td><input type="text" name="com_phone1" />-
			<input type="text" name="com_phone2" />-
			<input type="text" name="com_phone3" /></td>
			<!-- <td><input type="file" name="ff" /></td> -->
		</tr>
		<tr>
			<td>회사주소</td>
			<td>
				<select name="com_address1">
					<option value="서울">서울</option>
					<option value="인천">인천</option>
					<option value="부산">부산</option>
					<option value="대구">대구</option>
					<option value="대전">대전</option>
					<option value="광주">광주</option>
					<option value="울산">울산</option>
					<option value="경기">경기</option>
					<option value="충남">충남</option>
					<option value="충북">충북</option>
					<option value="강원">강원</option>
					<option value="경북">경북</option>
					<option value="경남">경남</option>
					<option value="전북">전북</option>
					<option value="전남">전남</option>
					<option value="제주">제주</option>
				</select><input type="text" name="com_address2">
			</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="text" name="com_email1">@
				<select name="com_email2">
					<option value="naver.com">네이버</option>
					<option value="gmail.com" selected="selected">구글</option>
					<option value="daum.net" >다음</option>
					<option value="yahoo.co.kr">야후</option>
				</select></td>
		</tr>
		<tr>
			<td>회사 홈페이지</td>
			<td>http://<input type="text" name="homepage"
			value="<%=vo.getHomepage()%>"></td>
		</tr>
		<tr>
			<td>과거 프로젝트</td>
			<td><input type="file" name="com_proj"
			value="<%=vo.getCom_Proj()%>"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="수정"onclick="frmGo()" class="sch"  /> <!-- class="sch"  -->
			<input type="reset" value="초기화" class="sch"/>
			<a href="javascript:history.back()">뒤로</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>