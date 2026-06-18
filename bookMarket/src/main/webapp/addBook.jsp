<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>도서 등록</title>
<link rel="stylesheet" href="./resources/css/welcome.css" />
<link rel="stylesheet" href="./resources/css/addBook.css" />
<script type="text/javascript" src="./resources/js/validation.js"></script>
</head>
<body>
	<fmt:setLocale value='<%=request.getParameter("language")%>' />
	<fmt:bundle basename="bundle.message">
		<div class="root">
			<header>
				<%@ include file="menu.jsp"%>
				<div class="tit">
					<h1>
						<fmt:message key="title" />
					</h1>
					<p>Book Addition</p>
				</div>
			</header>
			<section>
				<div class="addBook-container">
					<div class="text-end">
						<a href="?language=ko">Korean</a> | <a href="?language=en">English</a>
					</div>
					<form action="./processAddBook.jsp" name="newBook" method="post"
						enctype="multipart/form-data">
						<div class="col">
							<label class="lab"> <fmt:message key="bookId" />
							</label>
							<div class="inp_box">
								<input type="text" name="bookId" class="inp" id="bookId">
							</div>
						</div>
						<div class="col">
							<label class="lab"> <fmt:message key="name" />
							</label>
							<div class="inp_box">
								<input type="text" name="name" id="name" class="inp">
							</div>
						</div>
						<div class="col">
							<label class="lab"> <fmt:message key="unitPrice" />
							</label>
							<div class="inp_box">
								<input type="text" name="unitPrice" id="unitPrice" class="inp">
							</div>
						</div>
						<div class="col">
							<label class="lab"> <fmt:message key="author" />
							</label>
							<div class="inp_box">
								<input type="text" name="author" class="inp">
							</div>
						</div>
						<div class="col">
							<label class="lab"> <fmt:message key="publisher" />
							</label>
							<div class="inp_box">
								<input type="text" name="publisher" class="inp">
							</div>
						</div>
						<div class="col">
							<label class="lab"> <fmt:message key="releaseDate" />
							</label>
							<div class="inp_box">
								<input type="text" name="releaseDate" class="inp">
							</div>
						</div>
						<div class="col">
							<label class="lab"> <fmt:message key="description" />
							</label>
							<div class="inp_box">
								<textarea name="description" id="description" rows="2" cols="50"
									placeholder="100자 이상 적어주세요"></textarea>
							</div>
						</div>
						<div class="col">
							<label class="lab"> <fmt:message key="category" />
							</label>
							<div class="inp_box">
								<input type="text" name="category" class="inp">
							</div>
						</div>
						<div class="col">
							<label class="lab"> <fmt:message key="unitsInStock" />
							</label>
							<div class="inp_box">
								<input type="text" name="unitsInStock" id="unitsInStock"
									class="inp">
							</div>
						</div>
						<div class="col">
							<label class="lab"> <fmt:message key="condition" />
							</label>
							<div class="inp_box">
								<input type="radio" name="condition" value="New" class="inp">
								<fmt:message key="condition_New" />
								<input type="radio" name="condition" value="Old" class="inp">
								<fmt:message key="condition_Old" />
								<input type="radio" name="condition" value="EBook" class="inp">
								<fmt:message key="condition_Ebook" />
							</div>
						</div>
						<div class="col">
							<label class="lab"> <fmt:message key="bookImage" />
							</label>
							<div class="inp_box">
								<input type="file" name="BookImage" class="inp">
							</div>
						</div>
						<div class="col">
							<div class="inp_box">
								<input type="button" value="<fmt:message key="button" />"
									class="btn" onclick="CheckAddvarBook()">
							</div>
						</div>
					</form>
				</div>
			</section>
			<%@ include file="footer.jsp"%>
		</div>
	</fmt:bundle>
</body>
</html>
