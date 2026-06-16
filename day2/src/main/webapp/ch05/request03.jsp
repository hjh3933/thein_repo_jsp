<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Implicit Objects</title>
</head>
<body>
	<p>클라이언트 IP : <%=request.getRemoteAddr()%></p>
	<p>요청정보길이 : <%=request.getContentLength()%></p>
	<p>요청정보인코딩 : <%=request.getCharacterEncoding()%></p>
	<p>요청정보콘텐츠유형 : <%=request.getContentType()%></p>
	<p>요청정보프로토콜 : <%=request.getProtocol()%></p>
	<p>요청정보전송방식 : <%=request.getMethod()%></p>
	<p>요청 uri : <%=request.getRequestURI()%></p>
	<p>콘텍스트 경로 : <%=request.getContextPath()%></p>
	<p>서버이름 : <%=request.getServerName()%></p>
	<p>서버포트 : <%=request.getServerPort()%></p>
	<p>쿼리문 : <%=request.getQueryString()%></p>
</body>
</html>
