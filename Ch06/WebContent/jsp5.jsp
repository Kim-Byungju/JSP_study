<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
		Date date = new Date();
		
		// YYYY 또는 yyyy같음, 
		SimpleDateFormat sdf1 = new SimpleDateFormat("YYYY-MM-dd");
		SimpleDateFormat sdf2 = new SimpleDateFormat("YYYY-MM-dd hh:mm:ss");
		
		String d1 = sdf1.format(date);
		String d2 = sdf2.format(date);
	%>
	오늘 년월일<%=d1 %><br>
	오늘 년월일 시분초<%=d2 %><br>
</body>
</html>