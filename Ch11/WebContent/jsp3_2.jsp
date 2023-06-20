<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8"); %>
	<h3>좋아하는 애완동물</h3>
	<p>${paramValues.pet[0]} </p>
	<p>${paramValues.pet[1]} </p>
	<p>${paramValues.pet[2]} </p>
</body>
</html>