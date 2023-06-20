<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="">
		이름 : <input type="text" name="name"><br>
		나이 : <input type="text" name="age"><br>
		<input type="submit" value="전송">
	</form>
	
	<c:choose>
		<c:when test="${ param.name=='홍길동'}">
			<h3>당신의 이름은 홍길동 입니다.</h3>
		</c:when>
		<c:when test="${param.age=='25'}">
			<h3>당신의 나이는 25세 입니다.</h3>
		</c:when>
		<c:otherwise>
		 당신은 누구냐?
		</c:otherwise>			
	</c:choose>
</body>
</html>