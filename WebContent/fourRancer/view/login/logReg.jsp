<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<style type="text/css">
.ds-btn li{ list-style:none; float:left; padding:10px; }
.ds-btn li a span{padding-left:15px;padding-right:5px;width:100%;display:inline-block; text-align:left;}
.ds-btn li a span small{width:100%; display:inline-block; text-align:left;}

</style>

</head>
<body>
<!-- 가입할건데 
개인이냐 기업이냐 체크 -->
<!-- <form>
	<table>
		<tr>
			<td><button type="button" class="btn btn-success" name="freelancer" onClick="location.href='../../login/second/freeLogForm.jsp';" >개인</button>
			
			
						<input type="button" value="개인" name="freelancer" onClick="location.href='../../login/second/freeLogForm.jsp';"></td>
			
			<td>
			<button type="button" class="btn btn-primary" name="company" onClick="location.href='../../login/second/comLogForm.jsp';">기업</button>
			<input type="button" value="기업" name="company" onClick="location.href='../../login/second/comLogForm.jsp';"></td>
		</tr>
	</table>
</form> -->

<div class="container" align="center">
	<div class="row">
    <ul class="ds-btn">
   
        <li>
             <a class="btn btn-lg btn-primary" href="../../login/second/freeLogForm.jsp">
          <i class="glyphicon glyphicon-user pull-left"></i><span>개인 회원 로그인<br><small>Free lancer account</small></span></a> 
            
        </li>
        <li>
             <a class="btn btn-lg btn-success " href="../../login/second/comLogForm.jsp">
         <i class="glyphicon glyphicon-dashboard pull-left"></i><span>기업 회원 로그인<br><small>Company account</small></span></a> 
            
        </li>
       
    </ul>
    
	</div>
</div>

</body>
</html>