<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page isELIgnored = "true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>import</title>
  </head>
  <body>
    <% request.setAttribute("RequestAttribute", "request 내장 객체"); %>
    ${requestScope.RequestAttribute}
    <!-- true로 하면 사용불가라 값이 안보이고 그대로 나온다 -->
  </body>
</html>
