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
		request.setCharacterEncoding("utf-8");
		pageContext.setAttribute("name", "홍길동");
		pageContext.setAttribute("score", 80);
	%>
	<%=pageContext.getAttribute("name") %>님의 학점은
	<%=pageContext.getAttribute("score")+"입니다." %>
	
	<% pageContext.forward("jsp5_2.jsp");%>
	
</body>
</html>