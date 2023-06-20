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
		String id = (String)session.getAttribute("ID");
		if(id != null){
			session.invalidate();
			/* response.sendRedirect("index.jsp"); */
		} 
		out.print("<h3>로그아웃되었습니다....</h3>");
		out.print("<h3><a href='index.jsp'>로그인하러 가기</a></h3>");
	%>
</body>
</html>