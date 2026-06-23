<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
int id = Integer.parseInt(request.getParameter("id"));
String method = request.getMethod();

String url = "jdbc:postgresql://localhost:5432/hrd";
String dbUser = "postgres";
String dbPass = "1234";

if ("POST".equals(method)) {
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String author = request.getParameter("author");

	Connection conn = null;
	PreparedStatement pstmt = null;

	try {
		Class.forName("org.postgresql.Driver");
		conn = DriverManager.getConnection(url, dbUser, dbPass);
		
		String sql = "UPDATE board SET title = ?, author = ?, content = ? WHERE id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, author);
		pstmt.setString(3, content);
		pstmt.setInt(4, id);
		pstmt.executeUpdate();
		
		response.sendRedirect("view.jsp?id=" + id);
		return;
		
	} catch (Exception e) {
		out.println("오류: " + e.getMessage());
	} finally {
		if (pstmt != null)
			try {
				pstmt.close();
			} catch (Exception e) {
			}
		if (conn != null)
			try {
				conn.close();
			} catch (Exception e) {
			}
	}
}

// GET 요청 시 또는 업데이트 실패 시 기존 글 데이터 조회
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String title = "";
String author = "";
String content = "";

try {
	Class.forName("org.postgresql.Driver");
	conn = DriverManager.getConnection(url, dbUser, dbPass);
	
	String sql = "SELECT title, author, content FROM board WHERE id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, id);
	rs = pstmt.executeQuery();
	
	if (rs.next()) {
		title = rs.getString("title");
		author = rs.getString("author");
		content = rs.getString("content");
	} else {
		out.println("<script>alert('해당 게시글이 존재하지 않습니다.'); location.href='list.jsp';</script>");
		return;
	}
} catch (Exception e) {
	out.println("오류: " + e.getMessage());
} finally {
	if (rs != null)
		try {
			rs.close();
		} catch (Exception e) {
		}
	if (pstmt != null)
		try {
			pstmt.close();
		} catch (Exception e) {
		}
	if (conn != null)
		try {
			conn.close();
		} catch (Exception e) {
		}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정</title>
</head>
<body>
	<jsp:include page="header.jsp"/>
	
	<h2>글 수정</h2>
	
	<form method="post">
		<p>제목: <input type="text" name="title" value="<%=title %>" style="width: 400px"> </p>
		<p>작성자: <input type="text" name="author" value="<%=author %>"></p>
		<p>내용: <textarea name="content" rows="8" cols="60"><%=content %></textarea> </p>
		<p> <input type="submit" value="수정"><a href="view.jsp?id=<%=id %>">취소</a> </p>
	</form>
</body>
</html>
