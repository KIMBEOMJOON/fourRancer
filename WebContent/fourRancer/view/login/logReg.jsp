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
<!-- �����Ұǵ� 
�����̳� ����̳� üũ -->
<!-- <form>
	<table>
		<tr>
			<td><button type="button" class="btn btn-success" name="freelancer" onClick="location.href='../../login/second/freeLogForm.jsp';" >����</button>
			
			
						<input type="button" value="����" name="freelancer" onClick="location.href='../../login/second/freeLogForm.jsp';"></td>
			
			<td>
			<button type="button" class="btn btn-primary" name="company" onClick="location.href='../../login/second/comLogForm.jsp';">���</button>
			<input type="button" value="���" name="company" onClick="location.href='../../login/second/comLogForm.jsp';"></td>
		</tr>
	</table>
</form> -->

<div class="container" align="center">
	<div class="row">
    <ul class="ds-btn">
   
        <li>
             <a class="btn btn-lg btn-primary" href="../../login/second/freeLogForm.jsp">
          <i class="glyphicon glyphicon-user pull-left"></i><span>���� ȸ�� �α���<br><small>Free lancer account</small></span></a> 
            
        </li>
        <li>
             <a class="btn btn-lg btn-success " href="../../login/second/comLogForm.jsp">
         <i class="glyphicon glyphicon-dashboard pull-left"></i><span>��� ȸ�� �α���<br><small>Company account</small></span></a> 
            
        </li>
       
    </ul>
    
	</div>
</div>

</body>
</html>