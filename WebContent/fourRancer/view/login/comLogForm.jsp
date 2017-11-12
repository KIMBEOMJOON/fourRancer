<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:set var="memId" value="" />
<c:if test="${memId!=null }" >
<c:set var="memId" value="${memId }" />
</c:if> 

<%-- <form action="../../login/second/comLogReg.jsp">
	<input type="hidden" name="goUrl" value="${nowUrl }" />
	id:<input type="text" name="memId" value="${memId }"/>
	pw:<input type="text" name="memPw" />
		 nowUrl: ${nowUrl }<br>
		 memId: ${memId }<br>
	<input type="submit" value="로그인" />
</form> --%>


	<form class="form-horizontal" action="../../login/second/comLogReg.jsp">
<fieldset>

<!-- Form Name -->
<legend>기업 로그인</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="userid">아이디</label>  
  <div class="col-md-4">
  <input id="userid" name="memId" type="text" placeholder="아이디를 입력해주세요." class="form-control input-md" required="">
    
  </div>
</div>

<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="password">비밀번호</label>
  <div class="col-md-4">
    <input id="password" name="memPw" type="password" placeholder="비밀번호를 입력해주세요." class="form-control input-md" required="">
    
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="btnSubmit"></label>
  <div class="col-md-4">
    <button id="btnSubmit" name="btnSubmit" class="btn btn-primary">로그인</button>
  </div>
</div>

</fieldset>
</form>