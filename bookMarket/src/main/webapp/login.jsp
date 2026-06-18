<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./resources/css/welcome.css" />
<link rel="stylesheet" href="./resources/css/login.css" />
</head>
<body>
	<div class="root">
		<%!String greeting = "로그인";%>
		<header>
			<%@ include file="menu.jsp"%>
			<div class="tit">
				<h1><%=greeting%></h1>
				<p>Login</p>
			</div>
		</header>
		<section>
			<div class="login-container">
					<h3>Please sign in</h3>
					<%
					String error = request.getParameter("error");
					if (error != null) {
						out.println("<div class='alert alert-danger'>");
						out.println("아이디와 비밀번호를 확인해 주세요");
						out.println("</div>");
					}
					%>
					<form class="form-signin" action="j_security_check" method="post">
					<div class="input-container">
						<div class="form-floating">
							<label for="floatingInput">ID</label> <input type="text"
								class="form-control" name='j_username' required autofocus>
						</div>
						<div class="form-floating">
							<label for="floatingInput">Password</label> <input
								type="password" class="form-control" name='j_password'>
						</div>
					</div>
					<button class="btn" type="submit">로그인</button>
					</form>
			</div>
		</section>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>