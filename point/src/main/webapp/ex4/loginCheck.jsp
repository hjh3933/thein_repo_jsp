<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");

	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	
    String url = "jdbc:postgresql://localhost:5432/hrd";
    String dbUser = "postgres";
    String dbPass = "1234";
    
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    
    try {
    	Class.forName("org.postgresql.Driver");
    	conn = DriverManager.getConnection(url,dbUser, dbPass);
    	
    	String sql = "SELECT username FROM users WHERE userid=? AND password=?";
    	pstmt = conn.prepareStatement(sql);
    	pstmt.setString(1, userid);
    	pstmt.setString(2, password);
    	rs = pstmt.executeQuery();
    	
    	if(rs.next()) {
    		// 회원있음 - 로그인
    		String username = rs.getString("username");
    		session.setAttribute("loginUser", username);
    		response.sendRedirect("mypage.jsp");
    	} else {
    		// 회원없음 - 로그인 실패
    		response.sendRedirect("login.jsp?msg=fail");
    	}
    	
    } catch(Exception e) {
    	out.println("오류 발생!! : "+e.getMessage());
    } finally {
    	if(rs != null) try {rs.close();} catch(Exception e) {}
    	if(pstmt != null) try {pstmt.close();} catch(Exception e) {}
    	if(conn != null) try {conn.close();} catch(Exception e) {}
    }
	
	
%>