<%@page import="miniSrc.CompanyVO"%>
<%@page import="miniSrc.ProjectVO"%>
<%@page import="miniSrc.CompanyDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	/* request.setCharacterEncoding("euc-kr");
	String comId = request.getParameter("comId");
	
	//��� ���̵�� ����� �� ������Ʈ���� �޾ƿ�--dao
	CompanyDAO dao = new CompanyDAO();
	ArrayList<ProjectVO> proList = dao.comFindPro(comId);
	 session.setAttribute("proList", proList); 
	/* int i =1; */ 
	
	
CompanyVO vo = new CompanyVO();
vo.setCom_id(request.getParameter("memId"));
vo.setCom_pw(request.getParameter("memPw"));//vo�� �Ƶ������̵鰡����

String msg = "id�� pw�� ��ġ���� �ʽ��ϴ�.";
String url = "../../center/first/index.jsp";/* "+request.getParameter("goUrl"); */


CompanyVO res = new CompanyDAO().login(vo);//login�� ���ϴ� CompanyVO�� res������ ����

if(res!=null)
{
	session.setAttribute("mem", res);
	String comm = (String)"mem";
	System.out.print("������������"+comm);
	msg = res.getCom_name()+"�� �α��� �Ǿ����ϴ�.";
} /* else{
	
	if(url.contains("?"))
		url+="&";
	else
		url+="?";
	
	url +="?memId="+vo.getCom_id();
} */
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>�����</td><td>${comm}</td><%-- <%=comId %> --%>
		</tr>
		<tr>
			
			<%for(int i=0;i<proList.size();i++){ %>
				<td><%=i+1%>��° ������Ʈ</td>
				<td><a href="ProJoinUserList.jsp?num=<%=i%>">
				<%=proList.get(i).getP_id() %></a></td>
				</tr><tr>
			<%} %>
		</tr>
	</table>	
</body>
</html>