<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원정보</h2>
	<table border="1">
		<tr>
			<th>학생번호</th><th>소속학과</th><th>학생이름</th><th>학년</th><th>성별</th><th>나이</th><th>전화번호</th><th>주소</th>
			
		</tr>
	</table>
	<%
		String info = (String)request.getAttribute("info");
	%>
	<%=info %>
</body>
</html>