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
		String name = request.getParameter("name");	
		String age  = request.getParameter("age");	
		
		request.setAttribute("name", name);
		request.setAttribute("age", age);
	%>
	<%=name %>님의 나이는 <%=age %> 입니다.
	
	<jsp:forward page="jsp6_3.jsp"></jsp:forward>
</body>
</html>