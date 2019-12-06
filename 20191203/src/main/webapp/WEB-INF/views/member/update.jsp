<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
<meta charset="UTF-8">
<%@include file="../head.jsp"%>
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
				<h1>회원정보 수정</h1>
				<p>회원의 정보를 수정할 수 있습니다.</p>
			</div>

		</div>
		<!-- 		바디 -->
		
		<div class="row">
			<form action="${path}/member/updateProc.do">
			<input type="hidden" name="midx" value="${row.midx}" /> 
			<input type="hidden" name="rgdate" value="${row.rgdate}" />
				<div class="col-xs-12">

					<div class="form-group">
						<label for="id">ID:</label> <input type="text"
							class="form-control" id="id" name="id" value="${row.id}">
					</div>
					<div class="form-group">
						<label for="pwd">Password:</label> <input type="password"
							class="form-control" id="pwd" name="pwd" value="${row.pwd}">
					</div>
					<div class="form-group">
						<label for="name">Name:</label> <input type="text"
							class="form-control" id="name" name="name" value="${row.name}">
					</div>
					<div class="form-group">
						<label for="gender">Gender:</label> <input type="text"
							class="form-control" id="gender" name="gender" value="${row.gender}">
					</div>
					<div class="form-group">
						<label for="email">Email:</label> <input type="text"
							class="form-control" id="email" name="email" value="${row.email}">
					</div>
					<div class="checkbox">
						<label><input type="checkbox" name="save">
							Remember me</label>
					</div>
					<button type="submit" class="btn btn-default">회원수정</button>

				</div>
			</form>
		</div>
		<!-- 발 -->
		<div class="row">
			<div class="col text-center">copy right 멍구</div>
		</div>
	</div>
</body>
</html>
