<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
<meta charset="UTF-8">
<%@include file="../head.jsp"%>
<script type="text/javascript">
	function dodelete() {
		alert("삭제되었습니다.");
		$("#delefrm").submit();
	}
</script>
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
				<h1>멤버 게시판</h1>
			</div>
			<p>mysql과 mybatis를 이용해 회원가입을 구현</p>
		</div>
		<!-- 		바디 -->
		<form action="${path}/member/delete.do" id="delefrm">
			<div class="row">
				<h2>멤버 목록</h2>
				<table class="table table-hover table-bordered">
					<tr>
						<th></th>
						<th>순번</th>
						<th>id</th>
						<th>pwd</th>
						<th>name</th>
						<th>gender</th>
						<th>email</th>
						<th></th>
					</tr>

					<tr>
						<c:forEach items="${list}" var="mb">
							<tr>
								<td><input type="checkbox" name="midx" value="${mb.midx}" /></td>
								<td>${mb.midx}</td>
								<td>${mb.id}</td>
								<td>${mb.pwd}</td>
								<td>${mb.name}</td>
								<td>${mb.gender}</td>
								<td>${mb.email}</td>
								<td><a class="btn btn-primary"
									href="${path}/member/update.do?midx=${mb.midx}">수정</a></td>
							</tr>
						</c:forEach>
					</tr>
				</table>
			</div>
			<div class="row">
				<div class="col-sm-1">
					<input type="button" class="btn btn-primary" value="회원삭제"
						onclick="dodelete();">
				</div>
			</div>
		</form>
	</div>
</body>
</html>
