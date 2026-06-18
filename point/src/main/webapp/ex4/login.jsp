<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// 로그인 상태
if (session.getAttribute("loginUser") != null) {
	response.sendRedirect("mypage.jsp");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<%
	String msg = request.getParameter("msg");
	%>
	<%
	if ("fail".equals(msg)) {
	%>
	<p style="color: red">아이디 또는 비밀번호가 틀렸습니다.</p>
	<%
	}
	%>

	<form action="loginCheck.jsp" method="post">
		<p>
			아이디 : <input type="text" name="userid">
		</p>
		<p>
			비밀번호 : <input type="password" name="password">
		</p>
		<p>
			<input type="submit" value="로그인">
		</p>
	</form>
</body>
</html>