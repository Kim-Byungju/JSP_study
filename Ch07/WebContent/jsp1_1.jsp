<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<style type="text/css">
	body {
	background-color: lightgray;
}
	h3{
	color: blue;
	background-color: yellow;
	}

</style>
</head>
<body>
	<h3>여기는 첫번쨰 페이지입니다.</h3>
	<%@ include file="jsp1_2.jsp" %>
	
	<%
		/* pageContext.include("jsp1_2.jsp"); */
		int sum = num1+num2;
		out.print("<h3>"+num1+"+"+num2+"="+sum+"</h3>");
	%>
</body>
</html>