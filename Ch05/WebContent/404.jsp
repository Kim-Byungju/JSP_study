<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.net.URLEncoder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String search = " ";
		String e_search = URLEncoder.encode(search,"utf-8");
		response.sendRedirect("http://localhost:8080/Ch05/");
	%>
</body>
</html>