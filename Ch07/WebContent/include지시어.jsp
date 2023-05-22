<!-- 
 include방법
 	. pageContext.include() : 결과값을 가져와서 포함한다.
 	. %include file="페이지" : 코드를가져와서 함께실행
 	. jsp:include + java bean


 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="img.html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<h3>지시어로 페이지를 추가해 봅니다.</h3>
	<img alt="" src="./img/달.jpg" width="300" height="300">
	<%@ include file="img.html" %>
	<%
	response.setContentType("text/html;charset=utf-8");
	%>
	<%@ include file="index.html" %>
	<%@ include file="img.html" %>
</body>
</html>