<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id =  (String)session.getAttribute("LOGIN");
		boolean isLogin = false;
		
		if(id != null) isLogin = true;
		if(isLogin) out.print("<h3>"+id+"님은 로그인 상태입니다.</h3>");
			else out.print("<h3>로그아웃 상태입니다.</h3>");
		
	%>
	<a href="jsp6_4.jsp">로그아웃</a>
</body>
</html>