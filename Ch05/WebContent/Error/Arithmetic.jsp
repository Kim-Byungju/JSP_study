<!-- 
	오류처리
		 - 에러가 발생할수있는 페이지 : errorPage="에러발생시 이동할 페이지"
		 - 에러발생에 따른 보여줄페이지 : isError="true"
		 
		 - web.xml에서 오류코드와 페이지 매핑
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>데이터의 연산이 잘못되었습니다. 0으로 나눌수 없습니단.</h3>
</body>
</html>