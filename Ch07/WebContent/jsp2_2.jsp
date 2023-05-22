<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div{
	display: inline-block;
	width: 300px;
	height: 300px;
	background-color: lightgray;
	
	
}
h3{
	color: red;
	background: yellow;
}

</style>
</head>
<body>
	<div>
		<h3>여기는 세번쨰 페이지</h3>
		<%
			request.setCharacterEncoding("utf-8");
			String name = request.getParameter("name");
			
			int num1 = 100;
			int num2 = 200;
		%>
		처리결과값 : <%= num1+num2 %>
	</div>
</body>
</html>