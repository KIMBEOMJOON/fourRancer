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
					<td height="20">서울 특별시 종로구 율곡로10길105(봉익동) 디아망4층 <font
						color="b4b4b4">&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
				</tr>
				<tr>
					<td height="20"><font color="b4b4b4"> </font>대표: 정다빈 <font
						color="b4b4b4">&nbsp;&nbsp;&nbsp;&nbsp; </font>개인정보보호 담당자: 정다빈</td>
				</tr>

				<tr>
					<td height="20">상담 및 문의 : 010-2580-2580 <font color="b4b4b4">&nbsp;&nbsp;&nbsp;&nbsp;</font>
						<font color="b4b4b4">&nbsp;&nbsp;&nbsp;&nbsp;</font> 
						이메일 : fourlancer@four.com
					</td>
				</tr>
				<tr>
					<td height="20">사업자번호 : 606-88-12345 <font color="b4b4b4">&nbsp;&nbsp;&nbsp;&nbsp;</font>
						통신판매신고 : 제 2017-서울종로-0556 호 <font color="b4b4b4">&nbsp;&nbsp;&nbsp;&nbsp;</font>
						분쟁조정기관표시 : 소비자보호원
					</td>
				</tr>
				<tr>
					<td height="22" valign="bottom" class="tx11"
						style="padding: 5px 0 0 12px"><font color="b4b4b4"></a>&nbsp;&nbsp;Copyright(c)
							www.fourlancer.co.kr All right reserved.</font></td>
				</tr>
			</table>