<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<meta charset="UTF-8">
	<%@include file="../head.jsp" %>	
</head>
<body>
	<div class="container">
<!-- 		메뉴 -->
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
				<h1>글쓰기</h1>
				<p>글 제목과 글내용을 작성하실 수 있습니다.</p>
			</div>
			
		</div>
<!-- 		바디 -->
		<div class="row">
			<form action="${path}/freeboard/insertProc.do">
				글제목
				<input class="form-control" type="text" name="title">
				글내용
				<textarea class="form-control" rows="10" cols="50" name="content"></textarea>
				<input class="btn btn-primary m-3" type="submit" value="글작성">
			</form>
		</div>
	</div>
</body>
</html>
