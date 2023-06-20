<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body align="center">
	<%@ include file="/Header.jsp" %>
	<h2>로 그 인</h2>
	<form action="login.do" method="post">
		<table align="center" bgcolor="yellow" width="350" height="140">
			<tr><th>이 메 일</th><td><input type="text" name="email"></td></tr>
			<tr><th>비밀번호</th><td><input type="password" name="password"></td></tr>
		</table><p>
		<input type="submit" value="로그인">&nbsp;&nbsp;
		<input type="reset" value="취소">
	</form>
	<%@ include file="/Footer.jsp" %>

</body>
</html>