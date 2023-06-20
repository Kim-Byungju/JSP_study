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
		String age = (String)request.getAttribute("age");
	%>
	<h3 style="color: red">여기는 webContent밑엤는 view페이지입니다.</h3>
	넘어온 name값은 <%=name%><br>
	넘어온 age값은 <%=age%><br>
	<hr>
	넘어온 name값은 ${name }<br>
	넘어온 age값은 ${age }<br>
</body>
</html>