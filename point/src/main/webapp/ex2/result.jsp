<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");

String n1 = request.getParameter("num1");
String n2 = request.getParameter("num2");
String op = request.getParameter("op");

double num1 = Double.parseDouble(n1);
double num2 = Double.parseDouble(n2);
double result = 0;
String error = "";

switch (op) {
case "+":
	result = num1 + num2;
	break;
case "-":
	result = num1 - num2;
	break;
case "*":
	result = num1 * num2;
	break;
case "/":
	if (num2 == 0) {
		error = "0으로 나눌 수 없어요";
	} else {
		result = num1 / num2;
	}
	break;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>계산 결과</h2>
	<%
	if (!error.isEmpty()) {
	%>
	<p style="color: red;"><%=error%></p>
	<%
	} else {
	%>
	<p>
		<%=num1%><%=op%><%=num2%>
		= <strong><%=result%></strong>
	</p>
	<%
	}
	%>
	<a href="calc.jsp">다시 계산하기</a>
</body>
</html>