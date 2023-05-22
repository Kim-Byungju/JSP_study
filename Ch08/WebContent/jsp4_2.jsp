<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table {
	text-align: center;
	border: 1px solid black;
	border-collapse: collapse;
	width: 300px;
}
	td {
	border: 1px solid black;
	}
	input {
	border: 0;
}
#abc{
height: 400px;
}
</style>
</head>
<body>
	<jsp:useBean id="board" class="javabean.Board" scope="request"></jsp:useBean>
	<jsp:setProperty property="title" name="board"/>
	<jsp:setProperty property="name" name="board"/>
	<jsp:setProperty property="contents" name="board"/>
	<jsp:setProperty property="pw" name="board"/>
	
	<table>
		<tr><td>제목</td><td><jsp:getProperty property="title" name="board"/></td></tr>
		<tr><td>작성자</td><td><jsp:getProperty property="name" name="board"/></td></tr>
		<tr><td>내용</td><td><jsp:getProperty property="contents" name="board"/></td></tr>
		<tr><td>비밀번호</td><td><jsp:getProperty property="pw" name="board"/></td></tr>
		<tr><td></td></tr>
	</table>
</body>
</html>