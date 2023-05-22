<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.File, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		///저장
		application.setAttribute("temp_file", new File("C:\\Windows\\Temp"));
		
		request.setAttribute("request", new java.util.Date());
		session.setAttribute("ID", "홍길동");
		
		//읽어오기
		Date date = (Date)request.getAttribute("request");
		String id = (String)session.getAttribute("ID");
		File temp = (File)application.getAttribute("temp_file");
	%>
	날 짜 : <%=date %><br>
	아이디 : <%=id %> <br>
	파일 : <%=temp %>
</body>
</html>