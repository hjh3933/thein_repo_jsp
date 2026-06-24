<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페이지 오류</title>
<link rel="stylesheet" href="./resources/css/welcome.css">
<link rel="stylesheet" href="./resources/css/noBookId.css">
</head>
<body>
<div class="root">
		<header>
			<%@ include file="menu.jsp"%>
			<div class="tit">
				<h1>요청하신 페이지를 찾을 수 없습니다</h1>
			</div>
		</header>
		<section>
			<div class="noBookId_container">
				<p><%=request.getRequestURL() %></p>		
				<p><a href="books.jsp" class="btn">도서목록 &raquo;</a></p>		
			</div>
		</section>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>