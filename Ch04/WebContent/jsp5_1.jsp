<%@page import="java.net.URLEncoder"%>
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
		String url = "http://127.0.0.1:8080/Ch04/jsp5_2.jsp?name=";
	
		String e_name = URLEncoder.encode("홍길동", "utf-8");
		String e_addr = URLEncoder.encode("마포구", "utf-8");
		response.sendRedirect(url+e_name+"&addr="+e_addr);
		
	%>
</body>
</html>