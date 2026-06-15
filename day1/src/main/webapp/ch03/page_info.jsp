<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>import</title>
  </head>
  <body>
    <!-- 주석과 같은 기능, 실제로는 무시 -->
    <%@ page info="Date 클래스를 이용한 날짜 출력하기" %> Today is <%= new
    java.util.Date() %>
  </body>
</html>
