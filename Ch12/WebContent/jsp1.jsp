<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/myschool", "root", "mysql");
		
		if(conn != null){
			out.println("myschool에 연결되었습니다.");
			conn.close();
		} else {
			out.println("연결되었습니다.");
		}
	%>
</body>
</html>