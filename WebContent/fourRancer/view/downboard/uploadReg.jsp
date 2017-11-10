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
		"C:\\Users\\user\\Documents\\ggg\\miniProj\\WebContent\\kbj\\download\\downloadfile",
		10*1024*1024,
		"euc-kr",
		new DefaultFileRenamePolicy()
		);
	request.setCharacterEncoding("euc-kr");
	
	
	DownloadVO mem = new DownloadVO();
	

	mem.setId(1);
	mem.setPw(mm.getParameter("pw"));
	mem.setTitle(mm.getParameter("title"));
	mem.setContent(mm.getParameter("content"));
	mem.setUpdownfile(mm.getFilesystemName("updownfile"));
	mem.setOridown(mm.getFilesystemName("updownfile"));
	
	DownloadDAO dao = new DownloadDAO();
	dao.insert(mem);
	%>    
<script type="text/javascript">
	alert('등록 되었습니다');
	location.href = 'detail.jsp?id=<%=mem.getId()%>';
</script>


