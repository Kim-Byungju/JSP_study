<%@page import="javabean.GoodsInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="goods" class="javabean.GoodsInfo" scope="request"/>
	
	<jsp:setProperty property="*" name="goods"/>

	상품코드 : <jsp:getProperty property="code" name="goods"/><br>
	상품명 : <jsp:getProperty property="name" name="goods"/><br>
	상품가격 : <jsp:getProperty property="price" name="goods"/><br>
	상품수량 : <jsp:getProperty property="ea" name="goods"/><br>
		
	<a href="jsp3_3.jsp?code=<%= request.getParameter("code") %>
						&name=<%= request.getParameter("name") %>
						&price=<%= request.getParameter("price") %>
						&ea=<%= request.getParameter("ea") %>">결과보기</a>
</body>
</html>