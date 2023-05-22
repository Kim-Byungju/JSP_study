<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="./Error/Arithmetic.jsp"%>  <!-- 오류가 났을 떄 가야할 페이지 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Arithmetic오류발생시켜본다</h3>
	<%
		int num1 = 10;
		int num2 = 1;
		int result = num1/num2;
		out.print("계산한 결과값은 : "+result);   /* 오류가 없으면 이 페이지에서 정상실행 */
	%>
</body>
</html>