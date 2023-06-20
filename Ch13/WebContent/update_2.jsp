<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
	%>
	<form action="">
		<h3>회원정보가 수정되었습니다. 수정내용은 아래를 클릭해주세요.</h3>
		<a href="회원정보.jsp?id=${param.id}">회원정보조회</a>
	</form>
</body>
</html>