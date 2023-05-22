<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSP에 오신것을 환영합니다.</h1>
	<%
		for(int i=6; i>=1; i--){
			String str = "<h"+i+">WELCOME JSP!</h"+i+">";
			out.print(str);
		}
	%>
	<p>스크립트릿안에 작성해놓은 코드결과의 출력위치가어디인가요?</p>
	
	<!-- 500은 코드오류 -->
</body>
</html>