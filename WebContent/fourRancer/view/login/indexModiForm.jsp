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
	if(confirm('�����Ͻðڽ��ϱ� ?')){
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
			<td><input type="text" name="com_id" 
			value="<%=vo.getCom_id()%>" readonly="readonly" /></td>
		</tr>
		<tr>
			<td>pw</td>
			<td><input type="password" name="com_pw" /></td>
		</tr>
		<tr>
			<td>ȸ���</td>
			<td><input type="text" name="com_name" value="<%=vo.getCom_name()%>" /></td>
		</tr>
		<tr>
			<td>â����</td>
			<td><input type="text" name="found_day" value="<%=vo.getFound_day()%>" /></td>
		</tr>
		<tr>
			<td>��ǥ�ڸ�</td>
			<td><input type="text" name="represent" 
			value="<%=vo.getRepresent()%>" /></td>
		</tr>
		<tr>
			<td>����ڵ�Ϲ�ȣ</td>
			<td><input type="text" name="enroll_num1" />-
			<input type="text" name="enroll_num2" />-
			<input type="text" name="enroll_num3" /></td>
		</tr>
		<tr>
			<td>ȸ�� �ΰ�</td>
			<td><input type="file" name="logo"
			value="fileUp/<%=vo.getLogo()%>" /></td>
		</tr>
		<tr>
			<td>�ֿ�������</td>
			<td><textarea rows="5" cols="60" name="info" value="<%=vo.getInfo()%>" >�ֿ�������</textarea></td>
		</tr>
		<tr>
			<td>����ڸ�</td>
			<td><input type="text" name="charger" 
			value="<%=vo.getCharger()%>"/></td>
		</tr>
		<tr>
			<td>����� ����ó</td>
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
			<td>����ó(��ǥ��ȭ)</td>
			<td><input type="text" name="com_phone1" />-
			<input type="text" name="com_phone2" />-
			<input type="text" name="com_phone3" /></td>
			<!-- <td><input type="file" name="ff" /></td> -->
		</tr>
		<tr>
			<td>ȸ���ּ�</td>
			<td>
				<select name="com_address1">
					<option value="����">����</option>
					<option value="��õ">��õ</option>
					<option value="�λ�">�λ�</option>
					<option value="�뱸">�뱸</option>
					<option value="����">����</option>
					<option value="����">����</option>
					<option value="���">���</option>
					<option value="���">���</option>
					<option value="�泲">�泲</option>
					<option value="���">���</option>
					<option value="����">����</option>
					<option value="���">���</option>
					<option value="�泲">�泲</option>
					<option value="����">����</option>
					<option value="����">����</option>
					<option value="����">����</option>
				</select><input type="text" name="com_address2">
			</td>
		</tr>
		<tr>
			<td>�̸���</td>
			<td><input type="text" name="com_email1">@
				<select name="com_email2">
					<option value="naver.com">���̹�</option>
					<option value="gmail.com" selected="selected">����</option>
					<option value="daum.net" >����</option>
					<option value="yahoo.co.kr">����</option>
				</select></td>
		</tr>
		<tr>
			<td>ȸ�� Ȩ������</td>
			<td>http://<input type="text" name="homepage"
			value="<%=vo.getHomepage()%>"></td>
		</tr>
		<tr>
			<td>���� ������Ʈ</td>
			<td><input type="file" name="com_proj"
			value="<%=vo.getCom_proj()%>"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="����"onclick="frmGo()" class="sch"  /> <!-- class="sch"  -->
			<input type="reset" value="�ʱ�ȭ" class="sch"/>
			<a href="javascript:history.back()">�ڷ�</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>