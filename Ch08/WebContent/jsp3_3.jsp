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
	<h3>JSP태그로 출력</h3>
	<jsp:useBean id="goods" class="javabean.GoodsInfo" scope="request"></jsp:useBean>
	<jsp:setProperty property="*" name="goods"/>
	
	상품코드 : <jsp:getProperty property="code" name="goods"/>
	상품명 : <jsp:getProperty property="name"  name="goods"/>
	상품가격 : <jsp:getProperty property="price" name="goods"/>
	상품수량 : <jsp:getProperty property="ea" name="goods"/>
	<hr>
	<h3>객체를  생성하여 출력</h3>
	<%
	GoodsInfo good = new GoodsInfo();
	good.setCode(request.getParameter("code"));
	good.setName(request.getParameter("name"));
	good.setPrice(request.getParameter("price"));
	good.setEa(request.getParameter("ea"));
	%>
	상품코드 : <%=good.getCode() %>
	상품이름 : <%=good.getName() %>
	상품가격 : <%=good.getPrice() %>
	상품수량 : <%=good.getEa() %>
</body>
</html>