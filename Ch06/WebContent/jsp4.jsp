<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>여기는 에러문구를 처리해주는 jsp페이지입니다.</h3>
	<%
		int num1 = 10;
		int num2 = 0;
		int result = num1/num2;
		out.print("에러메시지 : "+exception.getMessage());
	
	%>
</body>
</html>