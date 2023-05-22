<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- pageEncoding="UTF-8" : JSP페이지에 기록된 소스토드 자체의 인코딩 방식 
    						  : JSP 페이지에 대한 정보를 설정-->
    						  
<!-- HTML : 텍스트내용 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 스크립트코드 : Java문법으로 프로그램을 구현하여 동적페이지를 구현 -->
	<%
		String info = application.getServerInfo();
		int major = application.getMajorVersion();
		int minor = application.getMinorVersion();
		out.print("서버버전 : "+info+"<br>");
		out.print("메이저버전 : "+major+"<br>");
		out.print("마이너버전 : "+minor+"<br>");
	%>
	<h3>서버정보</h3> : <%= info %><br>
	메이저버전 : <%= major %><br>
	마이너버전 : <%= minor %>
</body>
</html>