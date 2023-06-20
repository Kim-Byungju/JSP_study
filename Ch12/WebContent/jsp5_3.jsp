<%@page import="java.sql.PreparedStatement"%>
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
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		String url="jdbc:mysql://localhost:3306/myschool";
		String user="root";
		String pw = "mysql";
		
		Connection conn = null;
		Statement stmt = null;
		
		int res = 0;
		/* "insert into members values('"+id+"', '"+pass+"','"+name+"','"+phone+"','"+address+"')"; */
		String query = 
			"insert into members values(?,?,?,?,?)";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, pw);
			
			//stmt = conn.createStatement();
			//res = stmt.executeUpdate(query);
			
			PreparedStatement pstmt = conn.prepareStatement(query);
				pstmt.setString(1, id);
				pstmt.setString(2, pass);
				pstmt.setString(3, name);
				pstmt.setString(4, phone);
				pstmt.setString(5, address);
				
			res = pstmt.executeUpdate();
			if(res>0){
				out.print(res+"입력이 성공하였습니다.");
			}
			
			
		}catch(Exception e){
			out.print(e);
		} finally {
			if(conn != null){
				conn.close();
			}
			if(stmt != null){
				stmt.close();
			}
		}
	%>
	<br>
	<a href="jsp2.jsp">확인하러가기</a>
</body>
</html>