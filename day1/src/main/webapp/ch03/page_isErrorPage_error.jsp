<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ page isErrorPage = "true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>import</title>
  </head>
  <body>
    <h4>에러가 발생했습니다</h4>
    <h5>exception 내장 객체 변수</h5>
    <!-- 내장 객체 exception 변수가 담고 있는 오류의 내용을 출력함 -->
    <% exception.printStackTrace(new java.io.PrintWriter(out)); %>
  </body>
</html>
