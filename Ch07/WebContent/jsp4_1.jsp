<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8");
	%>
	<jsp:forward page="jsp4_2.jsp">
		<jsp:param  name="name" value="홍길동"/>
		<jsp:param  name="age" value="30"/>
	</jsp:forward>
</body>
</html>