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
		Cookie cookie = new Cookie("ID","ADMIN");
		cookie.setMaxAge(0);
		response.addCookie(cookie);
	%>
	<h3>로그아웃 되었습니다.</h3>
	<a href="http://localhost:8080/Ch09/jsp6_1(로그인폼).jsp"></a>
	<a href="http://localhost:8080/Ch09/jsp4(쿠키삭제).jsp">쿠키확인</a>
</body>
</html>