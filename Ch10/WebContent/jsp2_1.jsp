<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.setAttribute("NAME", "홍길동");
	session.setAttribute("ADDRESS", "서울");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>세션에 값을 설정<br>
		<a href="jsp2_2.jsp">여기클릭!</a> 설정된 속성값을 확인할수있습니다.
	
	</h3>
</body>
</html>