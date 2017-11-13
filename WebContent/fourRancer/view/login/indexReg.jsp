<%@page import="miniSrc.CompanyDAO"%>
<%@page import="miniSrc.CompanyVO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");

	MultipartRequest mm = new MultipartRequest(
			request,
			"E:\\xp\\2017java\\Webwork\\fourRancercopy\\WebContent\\fourRancer\\view\\login\\fileUp",
			10*1024*1024,
			"euc-kr",
			new DefaultFileRenamePolicy()
			);
	
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
	vo.setCom_name(mm.getParameter("com_name"));
	vo.setFound_day(mm.getParameter("found_day"));
	vo.setRepresent(mm.getParameter("represent"));
	vo.setEnroll_num(enroll_num);
	vo.setLogo(mm.getFilesystemName("logo"));
	vo.setInfo(mm.getParameter("info"));
	vo.setCharger(mm.getParameter("charger"));
	vo.setChar_phone(char_phone);
	vo.setCom_phone(com_phone);
	vo.setCom_address(com_address);
	vo.setCom_email(com_email);
	vo.setHomepage(mm.getParameter("homepage"));
	vo.setCom_proj(mm.getFilesystemName("com_proj"));
	
	
	/* vo.setGrade(Integer.parseInt(request.getParameter("grade")));
	
	
	vo.parseBirth(request.getParameter("birth"));
	//mem.parseRegDate(request.getParameter("regDate"));
	vo.setHobby(hobby);
	vo.setEmail(email); */
	
	
	CompanyDAO dao = new CompanyDAO();
	dao.insert(vo);
	
	
	%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	alert('회원가입 되었습니다');
	location.href = '../../login/third/indexDetail.jsp?com_id=<%=vo.getCom_id()%>';
</script>
</body>
</html>