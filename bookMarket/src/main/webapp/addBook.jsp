<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>도서 등록</title>
    <link rel="stylesheet" href="./resources/css/welcome.css" />
    <link rel="stylesheet" href="./resources/css/addBook.css" />
  </head>
  <body>
    <div class="root">
      <%!String greeting = "도서 등록";%>
      <header>
        <%@ include file="menu.jsp"%>
        <div class="tit">
          <h1><%=greeting%></h1>
          <p>Book Addition</p>
        </div>
      </header>
      <section>
        <div class="addBook-container">
          <form action="./processAddBook.jsp" name="newBook" method="post" enctype="multipart/form-data">
          	<div class="col">
          		<label class="lab">
          			도서코드
          		</label>
          		<div class="inp_box">
          			<input type="text" name="bookId" class="inp">
          		</div>
          	</div>
          	<div class="col">
          		<label class="lab">
          			도서명
          		</label>
          		<div class="inp_box">
          			<input type="text" name="name" class="inp">
          		</div>
          	</div>
          	<div class="col">
          		<label class="lab">
          			가격
          		</label>
          		<div class="inp_box">
          			<input type="text" name="unitPrice" class="inp">
          		</div>
          	</div>
          	<div class="col">
          		<label class="lab">
          			저자
          		</label>
          		<div class="inp_box">
          			<input type="text" name="author" class="inp">
          		</div>
          	</div>
          	<div class="col">
          		<label class="lab">
          			출판사
          		</label>
          		<div class="inp_box">
          			<input type="text" name="publisher" class="inp">
          		</div>
          	</div>
          	<div class="col">
          		<label class="lab">
          			출판일
          		</label>
          		<div class="inp_box">
          			<input type="text" name="releaseDate" class="inp">
          		</div>
          	</div>
          	<div class="col">
          		<label class="lab">
          			상세정보
          		</label>
          		<div class="inp_box">
          			<textarea name="description" rows="2" cols="50" placeholder="100자 이상 적어주세요"></textarea>
          		</div>
          	</div>
          	<div class="col">
          		<label class="lab">
          			분류
          		</label>
          		<div class="inp_box">
          			<input type="text" name="category" class="inp">
          		</div>
          	</div>
          	<div class="col">
          		<label class="lab">
          			재고수
          		</label>
          		<div class="inp_box">
          			<input type="text" name="unitsInStock" class="inp">
          		</div>
          	</div>
          	<div class="col">
          		<label class="lab">
          			상태
          		</label>
          		<div class="inp_box">
          			<input type="radio" name="condition" value="New" class="inp"> 신규도서
          			<input type="radio" name="condition" value="Old" class="inp"> 중고도서
          			<input type="radio" name="condition" value="EBook" class="inp"> E-Book
          		</div>
          	</div>
          	<div class="col">
          		<label class="lab">
          			이미지
          		</label>
          		<div class="inp_box">
          			<input type="file" name="BookImage" class="inp">
          		</div>
          	</div>
          	<div class="col">
          		<div class="inp_box">
          			<input type="submit" value="등록" class="btn">
          		</div>
          	</div>
          </form>
        </div>
      </section>
      <%@ include file="footer.jsp"%>
    </div>
  </body>
</html>
