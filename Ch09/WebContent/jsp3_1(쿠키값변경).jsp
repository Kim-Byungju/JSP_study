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
		Cookie cookie = new Cookie("name","JSP");
		response.addCookie(cookie);
	%>
	<a href="jsp3_2.jsp">쿠키 변경하기</a>
</body>
</html>