<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>요청 파라미터 이름</th>
			<th>요청 파라미터 값</th>
		</tr>
		<%
			request.setCharacterEncoding("UTF-8");
			
			// 이름 목록을 enum으로 가져옴
			Enumeration paramNames = request.getParameterNames();
			while(paramNames.hasMoreElements()) {
				// 반복문을 통해 순서대로이름을 뽑음
				String name = (String) paramNames.nextElement();
				out.print("<tr><td>"+name+"</td>\n");
				// 이름으로 parameter를 가져옴
				String paramValue = request.getParameter(name);
				out.println("<td>"+paramValue+"</td></tr>\n");
			}
		%>
	</table>
</body>
</html>