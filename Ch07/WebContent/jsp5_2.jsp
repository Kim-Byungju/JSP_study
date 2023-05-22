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
		String name = (String)pageContext.getAttribute("name");
		int score = (int)pageContext.getAttribute("score");
	%>
	<%=name %>님의 성적은 <%=score %>점 입니다.
</body>
</html>