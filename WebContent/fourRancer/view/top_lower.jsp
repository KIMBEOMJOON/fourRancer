<%@page import="java.util.LinkedHashMap"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<link href="../../bootstrap/css/bootstrap.css"
 rel="stylesheet" type="text/css"/>
 <link href="../../bootstrap/css/bootstrap-responsive.css" rel="stylesheet" type="text/css"/>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Navbar Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="navbar.css" rel="stylesheet">
 


</head>


<style>
.marginBottom-0 {margin-bottom:0;}

.dropdown-submenu{position:relative;}
.dropdown-submenu>.dropdown-menu{top:0;left:100%;margin-top:-6px;margin-left:-1px;-webkit-border-radius:0 6px 6px 6px;-moz-border-radius:0 6px 6px 6px;border-radius:0 6px 6px 6px;}
.dropdown-submenu>a:after{display:block;content:" ";float:right;width:0;height:0;border-color:transparent;border-style:solid;border-width:5px 0 5px 5px;border-left-color:#cccccc;margin-top:5px;margin-right:-10px;}
.dropdown-submenu:hover>a:after{border-left-color:#555;}
.dropdown-submenu.pull-left{float:none;}.dropdown-submenu.pull-left>.dropdown-menu{left:-100%;margin-left:10px;-webkit-border-radius:6px 0 6px 6px;-moz-border-radius:6px 0 6px 6px;border-radius:6px 0 6px 6px;}
.navbar-inverse {background-color: #00A2E8;color: #fff;}
.navbar-inverse .navbar-nav > .active > a, .navbar-inverse .navbar-nav > .active > a:focus, .navbar-inverse .navbar-nav > .active > a:hover {
    background-color: #00A2E8;
}
.navbar-inverse .navbar-nav > li > a{
	color: #fff;
	font-size: 14px;
}

/* div, ul, li { margin:0; padding:0; }

#Menu {
	float:center;
}

#Menu ul li {
	float:left;
	list-style-type:none;
}

#Menu a {
	height:16px;
	font-size:18px;
	padding:0 10px 0 10px;
	text-decoration:none;
}

#Menu ul ul {
display:none;
}

#Menu ul li:hover ul {
 display: block;
}

#Menu ul ul {
display:none;
position:absolute;
/* background-color:#5c5c5c; */
} */

</style>




<body>
	<%-- 
 <div id="Menu">
<ul>

	<c:forEach items="${top_lower}" begin="0" end="0" var="ee">
		<li><a href="../../${ee.key}/first/index.jsp" onclick="#">${ee.value}</a>
 	</c:forEach>
 	
 	<!-- 1번 끝 -->
 	<c:forEach items="${top_lower}" begin="1" end="1" var="ee">
		<li><a href="../../${ee.key}/first/index.jsp" onclick="#">${ee.value}</a>
 	</c:forEach>
 	
	<!-- 2번 끝 -->
	<c:forEach items="${top_lower}" begin="2" end="2" var="ee">
		<li><a href="../../${ee.key}/first/index.jsp" onclick="#">${ee.value}</a>
 	</c:forEach>
 		<ul>
  	<c:forEach items="${submenu1}" begin="0" end="7" var="rr">
		<li><a href="../../${rr.key}/first/index.jsp" onclick="#">${rr.value}</a></li>
	</c:forEach>
 		</ul>
		</li>
		
	<!-- 3번 끝 -->
	<c:forEach items="${top_lower}" begin="3" end="3" var="ee">
		<li><a href="../../${ee.key}/first/index.jsp" onclick="#">${ee.value}</a>
 	</c:forEach>
 		<ul>
  	<c:forEach items="${submenu2}" begin="0" end="3" var="tt">
		<li><a href="../../${tt.key}/first/index.jsp" onclick="#">${tt.value}</a></li>
	</c:forEach>
 		</ul>
		</li>  --%>
	<!-- 4번 끝 --><!-- 
<li><a href="#">Menu 3</a>
 
<ul>
<li><a href="#">Sub Menu 1</a></li>
<li><a href="#">Sub Menu 2</a></li>
<li><a href="#">Sub Menu 3</a></li>
</ul>
 
</li>


<li><a href="#">Menu 5</a></li>
</ul> -->
</div>



    
    
     
     
 	<nav class="navbar navbar-inverse navbar-static-top marginBottom-0"
		role="navigation">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target="#navbar-collapse-1">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>

	</div>

	<div class="collapse navbar-collapse" id="navbar-collapse-1">
		<ul class="nav navbar-nav">
			
			<!-- 프로젝트검색 -->
			
	<c:forEach items="${top_lower}" begin="0" end="0" var="ee">
		<li><a href="../../${ee.key}/first/index.jsp" onclick="#">${ee.value}</a>
 	</c:forEach>
 
				<!-- 프리랜서검색 -->
		<c:forEach items="${top_lower}" begin="1" end="1" var="ee">
		<li><a href="../../${ee.key}/first/index.jsp" onclick="#">${ee.value}</a>
 	</c:forEach>
 	
 	<!-- 마이페이지 -->
	<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown">마이페이지<b class="caret"></b></a>
				<ul class="dropdown-menu">
  	<c:forEach items="${submenu1}" begin="0" end="7" var="rr">
		<li><a href="../../${rr.key}/first/index.jsp" onclick="#">${rr.value}</a></li>
	</c:forEach>
				</ul>


			<li class="dropdown"><a href="gongji/index.jsp" class="dropdown-toggle"
				data-toggle="dropdown">고객센터<b class="caret"></b></a>
				<ul class="dropdown-menu">
					<c:forEach items="${submenu2}" begin="0" end="3" var="tt">
						<li><a href="../../${tt.key}/first/index.jsp" onclick="#">${tt.value}</a></li>
					</c:forEach>
				</ul>
		</ul>


	</div>
	<!-- /.navbar-collapse --> </nav>



</body>
</html>
