<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Action Tag</title>
  </head>
  <body>
    <jsp:useBean id="person" class="cho4.com.dao.Person" scope="request" />
    <p>아이디 : <%= person.getId() %></p>
    <p>이름 : <%= person.getName() %></p>
    <!-- 설정 -->
    <% person.setId(20000107); person.setName("홍주희"); %>
    <jsp:include page="useBean03.jsp" />
  </body>
</html>
