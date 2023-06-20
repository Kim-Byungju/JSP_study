<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body align="center">
	<jsp:include page="Header.jsp" />
	<h1>회원등록</h1>
	<form action="add.do" method="post">
		이   름: <input type="text" name="name"><br>
		이 메 일: <input type="email" name="email"><br>
		비밀번호: <input type="password" name="password"><br><br>
		
		<input type="submit" value="등록">&nbsp;&nbsp;
		<input type="reset"  value="취소">
	</form>
	<jsp:include page="Footer.jsp" />
</body>
</html>