<%@page import="java.net.URLEncoder"%>
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
		/* 네이버사이트로 sendRedirect 이동하여 JSP프로그래밍 검색하도록 구현하시어 
			http://search.naver.com/search/naver?where=nexearch&query=
	
		*/
		
		String search = "JSP 프로그래밍";
		String e_search = URLEncoder.encode(search,"utf-8");
		response.sendRedirect("http://search.naver.com/search.naver?where=nexearch&query=");
		
		
		
	%>

</body>
</html>