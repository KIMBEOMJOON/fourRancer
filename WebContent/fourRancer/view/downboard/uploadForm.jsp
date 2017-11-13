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
			<td>제목</td>
			<td><input type="text" name="title" /></td>
		</tr>
		<tr>
			<td width="100px">작성자</td>
			<td><input type="text" name="id" /></td>
		</tr>
		
		<tr>
			<td width="100px">비밀번호</td>
			<td><input type="password" name="pw" /></td>
		</tr>
		<td>파일</td>
		
			<td><input type="file" name="updownfile" /></td>
		<tr>
			<td>내용</td>
			<td><textarea rows="5" cols="30" name="content">
파일업로드
글쓰기 
</textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="글쓰기" class="sch" />
			<input type="reset" value="초기화" class="sch"/>
			<a href="index.jsp">목록으로</a>
			</td>
		</tr>
	</table>
</form>
