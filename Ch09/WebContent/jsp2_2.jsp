<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>(쿠키값 읽는 페이지)요청해온 request객체의 헤더속에 cookie를 꺼내봅시다.</h3>
	<%
		Cookie[] cookies = request.getCookies();
		if(cookies != null && cookies.length>0){
			for(int i=0; i<cookies.length; i++){
				out.print(cookies[i].getName());
				out.print(":");
				out.print(cookies[i].getValue());
				out.print("<br>");
			}
		}
	%>
</body>
</html>