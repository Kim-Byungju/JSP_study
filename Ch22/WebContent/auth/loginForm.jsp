<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="http://localhost:8080/Ch22/auth/login" method="post"> <!-- 1.절대 주소 : http://localhost:8080/Ch22/auth/login, 2.상대주소 : login, 3.절대경로: ../auth/login -->
		이름: <input type="text" name="name" value="홍길동">
		나이: <input type="text" name="age" value="30"><br><br>
		<input type="submit" value="login으로전송	"><br><br>
	</form>
</body>
</html>