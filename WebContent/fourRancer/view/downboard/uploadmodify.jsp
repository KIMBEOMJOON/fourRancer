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
	if(confirm('������ �����Ͻðڽ��ϱ�?')){
	frm.action="deleteFileReg.jsp"
	frm.submit();
	}
}
</script>



<form action="uploadmodifyReg.jsp" method="post" enctype="multipart/form-data" name="frm">
	<table border=1>
		
		<tr>
			<td>�۹�ȣ</td>
			<td><input type="text" name="id" 
			value="<%=vo.getId()%>" readonly="readonly" /></td>
		</tr>
		<tr>
			<td width="100px">����</td>
			<td><input type="text" name="title" value="<%=vo.getTitle() %>" /></td>
		</tr>
		
		<tr>
			<td width="100px">��й�ȣ</td>
			<td><input type="password" name="pw" /></td>
		</tr>
		<tr>
		<td>����</td>
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
			<br><input type="button"  value="���ϻ���" onclick="go()" />

		<%}else{%>
		<input type="file" name="updownfile">
			<%} %>
						
			
			
			
</td>
	</tr>
		<tr>
			<td>����</td>
			<td><textarea rows="5" cols="30" name="content">
���Ͼ��ε�
�۾��� 
</textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="����" class="sch" />
			<input type="reset" value="�ʱ�ȭ" class="sch"/>
			<a href="detail.jsp?id=<%=vo.getId()%>">�ڷΰ���</a>
			</td>
		</tr>
	</table>
</form>
