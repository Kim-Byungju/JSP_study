<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="설명내용을 기재할수 있다."%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 페이지에 설명이 필요한 경우 활용할수 있다. -->
	<%=getServletInfo()%>
	
	<% 
		pageContext.forward(""); 
	
	%>
</body>
</html>