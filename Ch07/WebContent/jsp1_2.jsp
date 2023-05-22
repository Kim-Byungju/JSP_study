<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<style type="text/css">
	h3{
	color: red;
	background-color: orange;
	}
</style>
</head>
<body>
	<hr>
	<%
		int num1=100;
		int num2=300;
	%>
	<h3>include된 페이지</h3>
	처리결과값 :<h3> <%=(num1+num2) %></h3> 
	<hr>
</body>
</html>