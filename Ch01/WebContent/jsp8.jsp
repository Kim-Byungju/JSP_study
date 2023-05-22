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
		String str = "표현식을 사용합니다.";
		int a= 10, b=20;
	%>
	<h2><%=str %></h2>
	<h3><%=a %>더하기<%=b%><%=a+b %>입니다.</h3>
	<h3>1부터 5까지 합은 <%= 1+2+4+5%>입니다.</h3>

</body>
</html>