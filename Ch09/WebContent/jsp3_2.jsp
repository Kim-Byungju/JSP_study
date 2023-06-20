<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie cookie = new Cookie("name","web");
		response.addCookie(cookie);
	%>
	<a href="jsp2_2.jsp">쿠키확인하기</a>
</body>
</html>