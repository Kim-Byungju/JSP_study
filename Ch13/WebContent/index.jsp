<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h2>환영합니다! 로그인이나 신규회원가입을 진행하십시오</h2>
		<form action="login.jsp">
			<table>
				<tr>
					<td>아이디</td><td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td>비밀번호</td><td><input type="password" name="pass"></td>
				</tr>
				<tr>
					<td colspan="2"></td><td><input type="submit" value="로그인"></td>
				</tr>
			</table>
			
			<a href="신규회원가입.jsp">신규회원가입</a>
		</form>
	</div>
</body>
</html>