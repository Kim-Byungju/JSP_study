<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
		String major = request.getParameter("major");
		String name = request.getParameter("name");
		int grade = Integer.parseInt(request.getParameter("grade"));
		String gender = request.getParameter("gender");
		int age = Integer.parseInt(request.getParameter("age"));
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		String url="jdbc:mysql://localhost:3306/myschool";
		String user="root";
		String pw = "mysql";
		
		Connection conn = null;
		Statement stmt = null;
		
		int res = 0;
		String query = 
			"insert into 학생 values('"+code+"', '"+major+"','"+name+"','"+grade+"','"+gender+"','"+age+"','"+phone+"','"+address+"')";
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, pw);
			
			stmt = conn.createStatement();
			res = stmt.executeUpdate(query);
			
			out.print(res+"입력 성공");
			
		}catch(Exception e){
			out.print(e);
		} finally {
			if(conn != null) {
				conn.close();
			}
			if(stmt != null){
				stmt.close();
			}
		}
	%>
	<br>
	<a href="jsp3.jsp">신규등록 확인</a>
</body>
</html>