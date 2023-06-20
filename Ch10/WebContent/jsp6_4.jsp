<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>로그아웃되었습니다.</h3>
	 <%
    	session.invalidate();
	 	response.sendRedirect("jsp6_1.jsp");
    %>
	<a href="jsp2_2.jsp">세션확인</a>
</body>
</html>