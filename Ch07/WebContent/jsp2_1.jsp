<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	h3 {
	color: blue;
	background: yellow;
}
	
</style>
</head>
<body>
	<div>
		<h3>여기는 두번쨰 페이지입니다.</h3>
		<hr>
		<%
			pageContext.include("jsp2_2.jsp");  //include된 페이지의 코드가 적용됨(style)
		%>
	</div>
</body>
</html>