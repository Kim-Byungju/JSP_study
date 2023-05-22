<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>로그인 창</h3>
	<%
		request.setAttribute("name", "홍길동");
		response.sendRedirect("jsp4_2.jsp");
	%>
</body>
</html>