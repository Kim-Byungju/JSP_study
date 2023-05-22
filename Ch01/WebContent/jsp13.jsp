<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>스크립트릿과 표현언어(EL)비교</h3>
	<br>
	<p>스크립트릿으로 구현</p>
		3더하기 4는
		<%
			int num1 =3;
			int num2 =4;
			out.print("<h3>"+(num1+num2)+"</h3>");
		%>
	<hr><br>
	<hr><br>
	<p>표현식으로 구현</p>
	3더하기 4는 <%=(num1+num2) %>
	<hr><br>
	<hr><br>
	<p>EL로 구현</p>
		3더하기 4는 $(num1+num2) 입니다.
	
</body>
</html>