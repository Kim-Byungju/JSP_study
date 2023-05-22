<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.lang.Math"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 로또번호 6개 출력 -->
	
	<!-- 선언부 : 변수나 메소드를 선언 -->
	<%!
		static String lotto() {
		int random = (int)((Math.random()*46)+1);
		return Integer.toString(random);
	}
	
	%>
	
	<!-- 스크립트릿 자바코드 -->
	<%
	out.print("<h3>");
	for(int i = 0; i<6; i++){
		out.print(lotto()+" ");
	}
	out.print("</h3>");
	%>
</body>
</html>