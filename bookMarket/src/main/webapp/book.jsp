<%@page import="dao.BookRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Book"%>
<%@ page errorPage="exceptionNoBookId.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>book</title>
<link rel="stylesheet" href="./resources/css/welcome.css" />
<link rel="stylesheet" href="./resources/css/book.css" />
<script type="text/javascript">
	function addToCart() {
		if (confirm("도서를 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<div class="root">
		<%!String greeting = "도서정보";%>
		<header>
			<%@ include file="menu.jsp"%>
			<div class="tit">
				<h1><%=greeting%></h1>
				<p>BookInfo</p>
			</div>
		</header>
		<section>
			<%
			String id = request.getParameter("id");
			BookRepository dao = BookRepository.getInstance();
			Book book = dao.getBookById(id);
			%>
			<div class="book-container">
				<img alt="" src="./resources/images/<%=book.getFilename()%>">
				<div>
					<h3><%=book.getName()%></h3>
					<p><%=book.getDescription()%></p>
					<p>
						<b>도서코드 : </b> <span class="book-code"><%=book.getBookId()%></span>
					</p>
					<p>
						<b>저자 : </b>
						<%=book.getAuthor()%>
					</p>
					<p>
						<b>출판사 : </b>
						<%=book.getPublisher()%>
					</p>
					<p>
						<b>출판일 : </b>
						<%=book.getReleaseDate()%>
					</p>
					<p>
						<b>분류 : </b>
						<%=book.getCategory()%>
					</p>
					<p>
						<b>재고수 : </b>
						<%=book.getUnitsInStock()%>
					</p>
					<h4><%=book.getUnitPrice()%>원
					</h4>
					<p>
					<form name="addForm"
						action="./addCart.jsp?id=<%=book.getBookId()%>" method="post">
						<a href="#" class="btn" onclick="addToCart()">도서주문 &raquo</a> 
						<a href="./cart.jsp" class="btn">장바구니 &raquo</a> 
						<a href="./books.jsp" class="btn">도서목록 &raquo</a>
					</form>
					</p>
				</div>
			</div>
		</section>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>
