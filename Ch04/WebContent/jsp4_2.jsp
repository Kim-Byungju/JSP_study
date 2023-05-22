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
		String name = (String)request.getAttribute("name");
		out.print("<h3>sendRedirect로 넘어온 페이지 입니다.</h3>");
	%>
	request속의 name?? <%=name %> >> 새롭게 request 객체가 생성되므로 없다.
</body>
</html>