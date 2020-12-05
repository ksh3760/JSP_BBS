<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width-device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css"> <%--커스텀 글씨체 참조 --%>
<title>우리 레스토랑</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String)session.getAttribute("userID");
		}
	%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" 
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="main.jsp">우리 레스토랑</a>
					<img alt="" src="">
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">메인</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
				<li><a href="#">메뉴 보기</a></li>
			</ul>
			<%
				if(userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">더보기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul> 
				</li>
			</ul>
			<%		
				} else {	// 로그인이 되어 있는 사람들이 볼 수 있는 화면
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul> 
				</li>
			</ul>
			<% 
				}
			%>
		</div>
	</nav>
	<div class="container">
		<div class="jumbotron"  style="background-color: #ccddff">
			<div class="container" style="margin-left: auto; margin-right: auto; display: block;">
				<h2>우리 레스토랑 홈페이지에 오신것을 환영합니다.</h2>
				<h4>저희 레스토랑은 항상 고객님을 위해 최고의 식사를 제공합니다.
				<h4>
				<a class="btn btn-primary btn-pull" href="https://www.google.com/maps/place/%EC%A4%91%EA%B5%AD+%ED%9B%84%EB%B2%A0%EC%9D%B4%EC%84%B1+%EC%9A%B0%ED%95%9C%EC%8B%9C/@30.7063723,114.2665785,10z/data=!4m5!3m4!1s0x342eaef8dd85f26f:0x39c2c9ac6c582210!8m2!3d30.5927058!4d114.3055344" role="button" >
				위치 보기
				</a>
				</p>
			</div>
		</div>
	</div>
	<hr>
	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carouse-indicators">
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/1.jpg">
				</div>
				<div class="item">
					<img src="images/2.jpg">
				</div>
				<div class="item">
					<img src="images/3.jpg">
				</div>
				<div class="item">
					<img src="images/4.jpg">
				</div>
				<div class="item">
					<img src="images/5.jpg" style="margin-left: auto; margin-right: auto; display: block;">
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>
	<!-- 내용추가  -->
	
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width-device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css"> <%-- 커스텀 글씨체 참조 --%>
<title>우리 레스토랑 메인페이지</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String)session.getAttribute("userID");
		}
	%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" 
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="main.jsp">우리 레스토랑</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">메인 페이지</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
			<%
				if(userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">더보기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul> 
				</li>
			</ul>
			<%		
				} else {	// 로그인이 되어 있는 사람들이 볼 수 있는 화면
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul> 
				</li>
			</ul>
			<% 
				}
			%>
		</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<div class="container">
				<h1>최고의 맛을 자랑하는</h1>
				<p>저희 레스토랑은 항상 고객님을 위해 최고의 식사를 제공합니다.
				<p><a class="btn btn-primary btn-pull" href="https://www.google.com/maps/place/%EC%A4%91%EA%B5%AD+%ED%9B%84%EB%B2%A0%EC%9D%B4%EC%84%B1+%EC%9A%B0%ED%95%9C%EC%8B%9C/@30.7063723,114.2665785,10z/data=!4m5!3m4!1s0x342eaef8dd85f26f:0x39c2c9ac6c582210!8m2!3d30.5927058!4d114.3055344" role="button" >
					위치 보기
					</a>
				</p>
			</div>
		</div>
	</div>
	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carouse-indicators">
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/1.jpg">
				</div>
				<div class="item">
					<img src="images/2.jpg">
				</div>
				<div class="item">
					<img src="images/3.jpg">
				</div>
				<div class="item">
					<img src="images/4.jpg">
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>
	<!-- 내용추가  -->
	
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
>>>>>>> acdd6a63dc4847efa1769fadd378d9869c96e185
</html>