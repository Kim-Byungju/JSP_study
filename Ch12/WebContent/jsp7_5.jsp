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
		String code = request.getParameter("code");
	%>
	<form action="">
		<h3>데이터가 수정되었습니다. 수정내용은 아래를 클릭해주세요</h3>
		<a href="jsp7_2.jsp?code=${param.code}">학생수정조회</a>
	</form>
</body>
</html>