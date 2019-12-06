<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<meta charset="UTF-8">
	<%@include file="../head.jsp" %>
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
				<h1>프리보드 게시판</h1>
			</div>
			<p>mysql과 mybatis를 이용해 게시판을 구현</p>
		</div>
<!-- 		바디 -->
		<form action="${path}/freeboard/delete.do" id="delefrm">
		<div class="row">
			<h2>게시판 목록</h2>
			<table class="table table-hover table-bordered">
				<tr>
					<th></th>
					<th>순번</th>
					<th>제목</th>
					<th>내용</th>
					<th>날짜</th>
					<th></th>
				</tr>
				
				<tr>
					<c:forEach items="${list}" var="fb">
						<tr>
						<td><input type="checkbox" name="idx" value="${fb.idx}"/></td>
						<td>${fb.idx}</td>
						<td>${fb.title}</td>
						<td>${fb.content}</td>
						<td>${fb.rgdate}</td>
						<td><a class="btn btn-primary"
								href="${path}/freeboard/update.do?idx=${fb.idx}">수정</a></td>
						</tr>
					</c:forEach>
				</tr>				
			</table>			
		</div>
<!-- 		버튼 -->
		<div class="row">
			<div class="col-sm-1">
				<a class="btn btn-primary" href="${path}/freeboard/insert.do">글쓰기</a>
			</div>
			<div class="col-sm-1">
				<input type="button" class="btn btn-primary" value="글삭제"
						onclick="dodelete();">
			</div>
		</div>
		</form>
	</div>
</body>
</html>
