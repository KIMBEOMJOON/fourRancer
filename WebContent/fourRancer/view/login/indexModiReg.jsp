<%@page import="miniSrc.CompanyDAO"%>
<%@page import="miniSrc.CompanyVO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	MultipartRequest mm = new MultipartRequest(
	request,
	"C:\\Users\\user\\eclipse-workspace\\jspProj\\WebContent\\fourRancer\\login\\third\\fileUp",
	10*1024*1024,
	"euc-kr",
	new DefaultFileRenamePolicy()
	);

	System.out.println(mm.getParameter("photo"));
	request.setCharacterEncoding("euc-kr");
	
	String com_email = mm.getParameter("com_email1")+
			"@"+mm.getParameter("com_email2");
	
	String enroll_num = mm.getParameter("enroll_num1")+
			"-"+mm.getParameter("enroll_num2")+"-"+mm.getParameter("enroll_num3");
	
	String char_phone = mm.getParameter("char_phone1")+
			"-"+mm.getParameter("char_phone2")+"-"+mm.getParameter("char_phone3");
	
	String com_phone = mm.getParameter("com_phone1")+
			"-"+mm.getParameter("com_phone2")+"-"+mm.getParameter("com_phone3");
	
	String com_address = mm.getParameter("com_address1")+
			"\t"+mm.getParameter("com_address2");
	
	CompanyVO vo = new CompanyVO();
	
	vo.setCom_id(mm.getParameter("com_id"));
	vo.setCom_pw(mm.getParameter("com_pw"));
	vo.setCom_name(mm.getParameter("com_Name"));
	vo.setFound_Day(mm.getParameter("found_Day"));
	vo.setRepresent(mm.getParameter("represent"));
	vo.setEnroll_Num(enroll_num);
	vo.setLogo(mm.getFilesystemName("logo"));
	vo.setInfo(mm.getParameter("info"));
	vo.setCharger(mm.getParameter("charger"));
	vo.setChar_Phone(char_phone);
	vo.setCom_Phone(com_phone);
	vo.setCom_Address(com_address);
	vo.setCom_Email(com_email);
	vo.setHomepage(mm.getParameter("homepage"));
	vo.setCom_Proj(mm.getFilesystemName("com_proj"));
	/* 
	if(mm.getFilesystemName("photo")==null){
	mem.setPhoto(mm.getParameter("photo"));		
	}else{
		mem.setPhoto(mm.getFilesystemName("photo"));
	}
	 */
	
	String msg = "pw가 일치하지 않습니다.";
	String url = "javascript:history.back()";
	
	
	if(new CompanyDAO().modify(vo))
	{
		msg = "수정 되었습니다";
		url = "indexDetail.jsp?Com_id="+vo.getCom_id();
	}
	
	%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	alert('<%=msg%>');
	location.href ='<%=url%>';
</script>
</body>
</html>