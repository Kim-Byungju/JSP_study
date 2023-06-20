<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#first{
		background-color: #DEB887;
	}
	table {
		font-size: 12px;
		text-align: center;
		width: 500px; height: 400px;
		border: 1px;
		border-collapse: collapse;
		background-color: lightyellow;
		box-shadow: 1px 1px 3px blue;
	}
</style>
</head>
<body>
	<table border="1" class="table">
		<tr id="first">
			<th>아이디</th><th>비밀번호</th><th>이름</th><th>전화번호</th><th>주소</th>
		</tr>
		<%
		Connection conn = null;
			
			
			String url="jdbc:mysql://localhost:3306/myschool";
			String user="root";
			String pw = "mysql";
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				conn= DriverManager.getConnection(url, user, pw);
				
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery("select * from members;"); //executeQuery 검색에서만 쓰임
				
				out.print("<h2>회원명부</h2>");
				while(rs.next()){
					out.print("<tr><td>"+rs.getString("id")+"</td>");
					out.print("<td>"+rs.getString("pw")+"</td>");
					out.print("<td>"+rs.getString("name")+"</td>");
					out.print("<td>"+rs.getString("phone")+"</td>");
					out.print("<td>"+rs.getString("address")+"</td></tr>");
				}
				
			} catch(Exception e){
				e.getMessage();
			}finally {
				conn.close();
			}
		%>
	</table>
</body>
</html>