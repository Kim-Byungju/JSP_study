<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="book" class="javabean.LibraryInfo" scope="request"/>
	<jsp:setProperty property="content" name="book"/>
	<jsp:setProperty property="title" name="book"/>
	<jsp:setProperty property="name" name="book"/>
	
	제목 : <jsp:getProperty property="title" name="book"/>
	저자 : <jsp:getProperty property="name" name="book"/>
	내용 : <jsp:setProperty property="content" name="book"/>
	
	<jsp:forward page="jsp2_3result.jsp"></jsp:forward>
	
</body>
</html>