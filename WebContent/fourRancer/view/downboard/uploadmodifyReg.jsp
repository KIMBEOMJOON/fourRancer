}}<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="miniSrc.DownloadDAO"%>
<%@page import="miniSrc.DownloadVO"%>
<%@page import="java.util.Date"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	MultipartRequest mm = new MultipartRequest(
		request,
		"C:\\Users\\user\\git\\fourRancer\\WebContent\\fourRancer\\downboard\\first\\downloadfile",
		10*1024*1024,
		"euc-kr",
		new DefaultFileRenamePolicy()
		);
	request.setCharacterEncoding("euc-kr");
	
	
	DownloadVO mem = new DownloadVO();
	

	mem.setId(Integer.parseInt(mm.getParameter("id")));
	mem.setPw(mm.getParameter("pw"));
	mem.setTitle(mm.getParameter("title"));
	mem.setContent(mm.getParameter("content"));
	mem.setUpdownfile(mm.getFilesystemName("updownfile"));
	mem.setOridown(mm.getFilesystemName("updownfile"));
	
	DownloadDAO dao = new DownloadDAO();
	dao.modify(mem);
	%>    
<script type="text/javascript">
	alert('수정 되었습니다');
	location.href = 'detail.jsp?id=<%=mem.getId()%>';
</script>


