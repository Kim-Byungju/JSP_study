<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>속성값 읽어오기</h3>
	<%
		Date date = (Date)request.getAttribute("request");
		String id = (String)session.getAttribute("ID");
		File temp = (File)application.getAttribute("temp_file");
	%>	
	날짜 : <%=date %><br>
	아이디 : <%=id %><br>
	파일 : <%=temp %><br>
</body>
</html>