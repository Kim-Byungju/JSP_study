<%@page import="javabean.LibraryInfo"%>
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
	<H3>프렌젠테이션페이지입니다.</H3>
	<jsp:useBean id="book" class="javabean.LibraryInfo" scope="request"></jsp:useBean>
	제목 : <jsp:getProperty property="title" name="book"/>
	저자 : <jsp:getProperty property="name" name="book"/>
	내용 : <jsp:getProperty property="content" name="book"/>
	
	<%
	LibraryInfo mybook  = new LibraryInfo();
	mybook.setTitle(request.getParameter("title"));
	mybook.setName(request.getParameter("name"));
	mybook.setContent(request.getParameter("content"));
	%>
		제목 : <%=mybook.getTitle() %>
		저자 : <%=mybook.getName() %>
		내용 : <%=mybook.getContent() %>
</body>
</html>