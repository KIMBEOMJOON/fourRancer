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
<form action="freelancerSearchReg1.jsp" method="post">
	<table border=1>
		<tr>
			<td>개발</td>
			<td><select name="deve" >
					<option value="선택">선택</option>
					<option value=".NET">.NET</option>
					<option value="C">C</option>
					<option value="DB">DB</option>
					<option value="JAVA">JAVA</option>
					<option value="PHP">PHP</option>
					<option value="ServerDevelopment">ServerDevelopment</option>
					<option value="ABAP">ABAP</option>
					<option value="C#">C#</option>
					<option value="Delphi">Delphi</option>
					<option value="JS">JS</option>
					<option value="PowerBuilder">PowerBuilder</option>
					<option value="VB">VB</option>
					<option value="Android">Android</option>
					<option value="C++">C++</option>
					<option value="Html">Html</option>
					<option value="Jsp">Jsp</option>
					<option value="Python">Python</option>
					<option value="VC++">VC++</option>
					<option value="Windows">Windows</option>
					<option value="QA">QA</option>
					<option value="Linux">Linux</option>
					<option value="IOS">IOS</option>
					<option value="COBOL">COBOL</option>
					<option value="ASP">ASP</option>
					<option value="ASP.NET">ASP.NET</option>
					<option value="CSS">CSS</option>
					<option value="Swift">Swift</option>
					<option value="Network">Network</option>
					<option value="Ruby">Ruby</option>
					<option value="Embedded">Embedded</option>
			</select>
			</td>
			<tr>
			<td>디자인/퍼블리싱</td>
			<td><select name="desi" >
					<option value="선택">선택</option>
					<option value="HTML5">HTML5</option>
					<option value="WebStandard">WebStandard</option>
					<option value="3D">3D</option>
					<option value="PowerPoint">PowerPoint</option>
					<option value="GraphicDesign">GraphicDesign</option>
					<option value="Mobile">Mobile</option>
					<option value="Publishing">Publishing</option>
					<option value="ActionScript">ActionScript</option>
					<option value="PhotoshopEditor">PhotoshopEditor</option>
					<option value="WebDesign">WebDesign</option>
					<option value="Flash">Flash</option>
				</select>
			</td>
			</tr>
			<tr>
			<td>기획/컨설턴트</td>
			<td><select name="plan" >
					<option value="선택">선택</option>
					<option value="OracleCunsultant">OracleCunsultant</option>
					<option value="PM">PM</option>
					<option value="PMO">PMO</option>
					<option value="SAPConsultant">SAPConsultant</option>
					<option value="Plan">Plan</option>
					<option value="MobilePlan">MobilePlan</option>
					<option value="WebPlan">WebPlan</option>
				</select>
			</td>
			</tr>
			<tr>
			<td>전문분야</td>
			<td><select name="spec" >
					<option value="선택">선택</option>
					<option value="Ajax">Ajax</option>
					<option value="DDK">DDK</option>
					<option value="GAUCE">GAUCE</option>
					<option value="JSTL">JSTL</option>
					<option value="MSTR">MSTR</option>
					<option value="SCM">SCM</option>
					<option value="TRUSTFORM">TRUSTFORM</option>
					<option value="WEBSPHERE">WEBSPHERE</option>
					<option value="BigData">BigData</option>
					<option value="WebAccessibility">WebAccessibility</option>
					<option value="BI">BI</option>
					<option value="DJANGO">DJANGO</option>
					<option value="Git">Git</option>
					<option value="LabVIEW">LabVIEW</option>
					<option value="MVC">MVC</option>
					<option value="SITEMESH">SITEMESH</option>
					<option value="TUXEDO">TUXEDO</option>
					<option value="WEBSQUARE">WEBSQUARE</option>
					<option value="Receive">Receive</option>
					<option value="GovFrame">e-GovFrame</option>
					<option value="BPM">BPM</option>
					<option value="DW">DW</option>
					<option value="Hadoop">Hadoop</option>
					<option value="LAFJ">LAFJ</option>
					<option value="OPENGL">OPENGL</option>
					<option value="SOAP">SOAP</option>
					<option value="UNITY3D">UNITY3D</option>
					<option value="XPLATFORM">XPLATFORM</option>
					<option value="Loan">Loan</option>
					<option value="CreditCard">CreditCard</option>
					<option value="BUILDER">BUILDER</option>
					<option value="EJB">EJB</option>
					<option value="IBSHEET">IBSHEET</option>
					<option value="MFC">MFC</option>
					<option value="OZReport">OZReport</option>
					<option value="STRUTS">STRUTS</option>
					<option value="WDK">WDK</option>
					<option value="ResponsiveWeb">ResponsiveWeb</option>
					<option value="ForeignExchange">ForeignExchange</option>
					<option value="HybridApp">HybridApp</option>
					<option value="Codeigniter">Codeigniter</option>
					<option value="ERP">ERP</option>
					<option value="JEUS">JEUS</option>
					<option value="MIPLATFORM">MIPLATFORM</option>
					<option value="PLM">PLM</option>
					<option value="SWING">SWING</option>
					<option value="WEBLOGIC">WEBLOGIC</option>
					<option value="SecurityDiagnosis">SecurityDiagnosis</option>
					<option value="WordPress">WordPress</option>
					<option value="Presentation">Presentation</option>
				</select>
			</td>
		</tr>
		<tr>
			
			<td colspan="4" >
			<input type="submit" value="검색" /></td>
		</tr>
	</table>
</form>
</body>
</html>