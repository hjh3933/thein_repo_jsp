<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서아이디 오류</title>
<link rel="stylesheet" href="./resources/css/welcome.css">
<link rel="stylesheet" href="./resources/css/noBookId.css">
</head>
<body>
<div class="root">
		<header>
			<%@ include file="menu.jsp"%>
			<div class="tit">
				<h1>해당 도서가 존재하지 않습니다</h1>
			</div>
		</header>
		<section>
			<div class="noBookId_container">
				<p><%=request.getRequestURL() %>?<%=request.getQueryString() %></p>		
				<p><a href="books.jsp" class="btn">도서목록 &raquo;</a></p>		
			</div>
		</section>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>