<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="miniSrc.DownloadDAO"%>
<%@page import="miniSrc.DownloadVO"%>
<%@page import="java.util.Date"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	MultipartRequest mm = new MultipartRequest(
		request,
		"C:\\Users\\user\\Documents\\ggg\\miniProj\\WebContent\\kbj\\download\\downloadfile",
		10*1024*1024,
		"euc-kr",
		new DefaultFileRenamePolicy()
		);
	request.setCharacterEncoding("euc-kr");
	
	
	DownloadVO mem = new DownloadVO();
	

	mem.setId(Integer.parseInt(mm.getParameter("id")));
	mem.setPw(mm.getParameter("pw"));
	
	String msg="��й�ȣ �����Դϴ�.";
	DownloadDAO dao = new DownloadDAO();
	if(dao.fileDelete(mem, request)){
		msg="���� �Ǿ����ϴ�";
		
	}
	%>    
<script type="text/javascript">
	alert('<%=msg%>');
	location.href = 'uploadmodify.jsp?id=<%=mem.getId()%>';
</script>


