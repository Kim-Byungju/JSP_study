<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h2>주소록 작성</h2>
		<hr>
			<a href="addressbook_controller.jsp?action=list">주소록 목록가기</a><p>
			<form action="addressbook_controller.jsp" method="post">
				<input type="hidden" name="action" value="insert">
				<table border="1">
					<tr>
						<th>이름</th><td><input type="text" name="name" maxlength="15"></td>
					</tr>
					<tr>
						<th>email</th><td><input type="email" name="email"></td>
					</tr>
					<tr>
						<th>전화번호</th><td><input type="tel" name="tel"></td>
					</tr>
					<tr>
						<th>생일</th><td><input type="date" name="birth"></td>
					</tr>
					<tr>
						<th>회사</th><td><input type="text" name="comdept"></td>
					</tr>
					<tr>
						<th>메모</th><td><input type="text" name="memo"></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="등록">&nbsp;
							<input type="reset" value="취소">
						</td>
					</tr>
				</table>
			</form>
	</div>
</body>
</html>