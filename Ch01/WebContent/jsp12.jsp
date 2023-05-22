<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>include지시자</h3>
	<hr>
	<%@ include file="jsp1.jsp" %>
	<hr><br><br>
	
	<h3>include액션</h3>
	<jsp:include page="jsp2.jsp"></jsp:include>
	<p>include액션 호출전</p>
</body>
</html>