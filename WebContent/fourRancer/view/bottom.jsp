<%@page import="java.util.LinkedHashMap"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

 <table width="100%">


	<tr align="center">
		<c:forEach var="ee" items="${bottom}">
		<td><a href="../../${ee.key}/first/index.jsp">${ee.value}</a></td>
		</c:forEach>
	</tr>

</table>



<table width="1200" border="0" align="center" cellpadding="0"
	cellspacing="0">
	<tr>


		<td width="200px" style="padding: 0 0 0 10px"><img
			src="../../center/first/joon.jpg" width="250px"></td>
		<td valign="top"
			style="padding-top: 7px; font-size: 11px; letter-spacing: 0em">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td height="20">���� Ư���� ���α� �����10��105(���͵�) ��Ƹ�4�� <font
						color="b4b4b4">&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
				</tr>
				<tr>
					<td height="20"><font color="b4b4b4"> </font>��ǥ: ���ٺ� <font
						color="b4b4b4">&nbsp;&nbsp;&nbsp;&nbsp; </font>����������ȣ �����: ���ٺ�</td>
				</tr>

				<tr>
					<td height="20">��� �� ���� : 010-2580-2580 <font color="b4b4b4">&nbsp;&nbsp;&nbsp;&nbsp;</font>
						<font color="b4b4b4">&nbsp;&nbsp;&nbsp;&nbsp;</font> 
						�̸��� : fourlancer@four.com
					</td>
				</tr>
				<tr>
					<td height="20">����ڹ�ȣ : 606-88-12345 <font color="b4b4b4">&nbsp;&nbsp;&nbsp;&nbsp;</font>
						����ǸŽŰ� : �� 2017-��������-0556 ȣ <font color="b4b4b4">&nbsp;&nbsp;&nbsp;&nbsp;</font>
						�����������ǥ�� : �Һ��ں�ȣ��
					</td>
				</tr>
				<tr>
					<td height="22" valign="bottom" class="tx11"
						style="padding: 5px 0 0 12px"><font color="b4b4b4"></a>&nbsp;&nbsp;Copyright(c)
							www.fourlancer.co.kr All right reserved.</font></td>
				</tr>
			</table>