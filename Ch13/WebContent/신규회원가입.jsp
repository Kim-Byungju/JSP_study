<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

table {
	border-collapse: collapse;
}
input {
	outline: none;
}
</style>
</head>
<body>
	<h3>신규 회원가입</h3>
	<form action="regist.jsp">
		<table border="1">
			<tr><td>아이디</td><td><input type="text" name="id"></td></tr>
			<tr><td>비밀번호</td><td><input type="password" name="pass"></td></tr>
			<tr><td>이름</td><td><input type="text" name="name"></td></tr>
			<tr><td>전화번호</td><td><input type="text" name="phone"></td></tr>
			<tr><td>이메일</td><td><input type="text" name="email"></td></tr>
			<tr><td colspan="2"><input type="submit" value="가입하기"></td></tr>
		</table>
	</form>	
</body>
</html>