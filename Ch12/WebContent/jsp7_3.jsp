<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table {
		background-color: #f6ffcc;
		border-collapse: collapse;
}
	input {
		border: none;
}
	input:hover {
		outline: none;	
}
	td{
		background: white;
		text-align: center;
}
</style>
</head>
<body>
	<h3>학생정보</h3>
	<form action="jsp7_4.jsp">
		<table border="1">
			<tr><th>학생정보</th><td><input type="text" name="code" value='${CODE}'></td></tr>
			<tr><th>소속학과</th><td><input type="text" name="dept" value="${DEPT}"></td></tr>
			<tr><th>학생이름</th><td><input type="text" name="name" value="${NAME}"></td></tr>
			<tr><th>학년</th><td><input type="text" name="grade" value="${GRADE}"></td></tr>
			<tr><th>성별</th><td><input type="text" name="gender" value="${GENDER}"></td></tr>
			<tr><th>나이</th><td><input type="text" name="age" value="${AGE}"></td></tr>
			<tr><th>전화번호</th><td><input type="text" name="phone" value="${PHONE}"></td></tr>
			<tr><th>주소</th><td><input type="text" name="address" value="${ADDRESS}"></td></tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="수정">&nbsp;&nbsp;
					<input type="reset" value="취소">
				</td>
			</tr>
		</table>
		<p>정보를 수정하시려면 내용을 수정후 수정버튼을 클릭바랍니다.</p>
	</form>
</body>
</html>