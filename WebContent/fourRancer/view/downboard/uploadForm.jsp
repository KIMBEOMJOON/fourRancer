<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<style type="text/css">
.sch{
	width:100px;
	height:30px;
}

</style>


<form action="uploadReg.jsp" method="post" enctype="multipart/form-data">
	<table border=1>
		
		<tr>
			<td>����</td>
			<td><input type="text" name="title" /></td>
		</tr>
		<tr>
			<td width="100px">�ۼ���</td>
			<td><input type="text" name="id" /></td>
		</tr>
		
		<tr>
			<td width="100px">��й�ȣ</td>
			<td><input type="password" name="pw" /></td>
		</tr>
		<td>����</td>
		
			<td><input type="file" name="updownfile" /></td>
		<tr>
			<td>����</td>
			<td><textarea rows="5" cols="30" name="content">
���Ͼ��ε�
�۾��� 
</textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="�۾���" class="sch" />
			<input type="reset" value="�ʱ�ȭ" class="sch"/>
			<a href="index.jsp">�������</a>
			</td>
		</tr>
	</table>
</form>
