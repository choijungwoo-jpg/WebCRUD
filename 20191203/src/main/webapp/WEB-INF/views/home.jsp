<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<meta charset="UTF-8">
	<%@include file="head.jsp" %>	
</head>
<body>
	<div class="container">
<!-- 		메뉴 -->
			<!-- 		회원가입 로그인 -->
		<div class="row">
			
			<div style="float: right">
				<a class="btn btn-primary" href="${path}/member/insert.do">회원가입</a>
			</div>			
		</div>
		
		<div class="row">
			<nav class="navbar navbar-default">
				<div class="contaier-fluid">
					<div class="navbar-header">
						<a class="navbar-brand" href="#">신입개발자</a>
						<ul class="nav navbar-nav">
							<li class="active"><a href="${path}">Home</a></li>
							<li><a href="${path}/freeboard/index.do">게시판</a></li>
							<li><a href="${path}/member/index.do">멤버</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
<!-- 			광고 -->
		<div class="row">
			<div class="jumbotron">
				<h1>포트폴리오</h1>
				<p>신입개발자가 되고 싶습니다.</p>
			</div>
				<p>java jsp spring 순서대로 배웠습니다.</p>
				<p>html css javascript jquery 는 열심히 배우고 있습니다.</p>
		</div>
<!-- 		바디 -->
		<div class="row">
		
		</div>
	</div>
</body>
</html>
