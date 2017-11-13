<%@page import="miniSrc.ProjectDAO"%>
<%@page import="miniSrc.ProjectVO"%>
<%@page import="miniSrc.CompanyDAO"%>
<%@page import="miniSrc.CompanyVO"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");

	String com_id = "";
	com_id = (String)session.getAttribute("member");

	String pro_subject = request.getParameter("tool1")+", "+
			request.getParameter("tool2")+", "+
			request.getParameter("tool3")+", "+
			request.getParameter("tool4");
	
	String term1 = request.getParameter("term");
	int term = Integer.parseInt(term1);
	
	String input_num1 = request.getParameter("input_num");
	int input_num = Integer.parseInt(input_num1);
	
	String pro_salary1 = request.getParameter("pro_salary");
	int pro_salary = Integer.parseInt(pro_salary1);
	
	String rank = request.getParameter("rank");
	
	String p_id = request.getParameter("p_id");
	
	ProjectVO vo = new ProjectVO();
	
	vo.setP_id(request.getParameter("p_id"));
	vo.setCom_id(com_id);
	vo.setPro_subject(pro_subject);
	vo.setTerm(term);
	vo.setRank(request.getParameter("rank"));
	vo.setInput_num(input_num);
	vo.setPro_salary(pro_salary);
	
	
	
	/* vo.setGrade(Integer.parseInt(request.getParameter("grade")));
	
	
	vo.parseBirth(request.getParameter("birth"));
	//mem.parseRegDate(request.getParameter("regDate"));
	vo.setHobby(hobby);
	vo.setEmail(email); */
	
	/* 
	ProjectDAO dao = new ProjectDAO();
	dao.project_register(p_id, com_id, pro_subject, term, rank, input_num, pro_salary); */
		
	%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	alert('프로젝트가 등록되었습니다!');
	location.href = '../../projectSearch/projRegisterDetail.jsp?com_id=<%=com_id%>';
</script>
</body>
</html>