<%@page import="com.sun.xml.internal.bind.v2.runtime.Location"%>
<%@page import="miniSrc.DownloadDAO"%>
<%@page import="miniSrc.DownloadVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
	DownloadDAO dao = new DownloadDAO();
	DownloadVO vo = dao.detail(request.getParameter("id"));
	
%>
  

<style type="text/css">
.sch{
	width:100px;
	height:30px;
}

</style>
<script type="text/javascript">

function go(){
	if(confirm('파일을 삭제하시겠습니까?')){
	frm.action="deleteFileReg.jsp"
	frm.submit();
	}
}
</script>



<form action="uploadmodifyReg.jsp" method="post" enctype="multipart/form-data" name="frm">
	<table border=1>
		
		<tr>
			<td>글번호</td>
			<td><input type="text" name="id" 
			value="<%=vo.getId()%>" readonly="readonly" /></td>
		</tr>
		<tr>
			<td width="100px">제목</td>
			<td><input type="text" name="title" value="<%=vo.getTitle() %>" /></td>
		</tr>
		
		<tr>
			<td width="100px">비밀번호</td>
			<td><input type="password" name="pw" /></td>
		</tr>
		<tr>
		<td>파일</td>
		<td>
		<%if(vo.getUpdownfile()!=null){
			%>
		<% if(vo.isImgChk()) {%>
		<img src="downloadfile/<%=vo.getUpdownfile() %>">
		<%} else{ %>
			<a href="download.jsp?updownload=<%=vo.getUpdownfile() %>&oridown=<%=vo.getOridown()%>"><%=vo.getOridown()%></a>
		<%} }%>
		
		<%if(vo.getUpdownfile()!=null){
			%>
			<br><input type="button"  value="파일삭제" onclick="go()" />

		<%}else{%>
		<input type="file" name="updownfile">
			<%} %>
						
			
			
			
</td>
	</tr>
		<tr>
			<td>내용</td>
			<td><textarea rows="5" cols="30" name="content">
파일업로드
글쓰기 
</textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="수정" class="sch" />
			<input type="reset" value="초기화" class="sch"/>
			<a href="detail.jsp?id=<%=vo.getId()%>">뒤로가기</a>
			</td>
		</tr>
	</table>
</form>
