<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Book"%>
<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>books</title>
<link rel="stylesheet" href="./welcome.css" />
<link rel="stylesheet" href="./books.css" />
</head>
<body>
	<div class="root">
		<%!String greeting = "도서목록";%>
		<header>
			<%@ include file="menu.jsp"%>
			<div class="tit">
				<h1><%=greeting%></h1>
				<p>BookList</p>
			</div>
		</header>
		<section>
			<div class="books-container">
				<%
				ArrayList<Book> listOfBooks = bookDAO.getAllBooks();
				%>
				<div class="books-box">
					<%
					for (int i = 0; i < listOfBooks.size(); i++) {
						Book book = listOfBooks.get(i);
					%>
					<div class="book-box">
						<div class="book">
							<h5><%=book.getName()%></h5>
							<p><%=book.getAuthor()%></p>
							<p><%=book.getPublisher()%>
								|
								<%=book.getReleaseDate()%></p>
							<p class="desc"><%=book.getDescription().substring(0, 60)%>...
							</p>
							<p><%=book.getUnitPrice()%>원
							</p>
							<p>
								<a href="./book.jsp?id=<%=book.getBookId()%>" class="btn">상세
									정보 &raquo</a>
							</p>
						</div>
					</div>
					<%
					}
					%>
				</div>
			</div>
		</section>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>
