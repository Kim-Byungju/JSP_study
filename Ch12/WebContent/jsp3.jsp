<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
	<!-- 학생테이블을 읽어와서 모양을 만들어 출력한다 -->
	<table border="1" class="table">
		<tr id="first">
			<th>학생번호</th><th>소속학과</th><th>학생이름</th><th>학년</th><th>성별</th><th>나이</th><th>전화번호</th><th>주소</th>
		</tr>
		<%
			Connection conn = null;
			
			String url="jdbc:mysql://localhost:3306/myschool";
			String user = "root";
			String pw = "mysql";
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
			
				conn = DriverManager.getConnection(url, user, pw);
				
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery("select * from 학생;");
				
				out.print("<h2>학생명부</h2>");
				while(rs.next()){
					out.print("<tr><td>"+rs.getString("학생번호")+"</td>");
					out.print("<td>"+rs.getString("소속학과")+"</td>");
					out.print("<td>"+rs.getString("학생이름")+"</td>");
					out.print("<td>"+rs.getString("학년")+"</td>");
					out.print("<td>"+rs.getString("성별")+"</td>");
					out.print("<td>"+rs.getString("나이")+"</td>");
					out.print("<td>"+rs.getString("전화번호")+"</td>");
					out.print("<td>"+rs.getString("주소")+"</td></tr>");
				}
			} catch(Exception e) {
				e.getMessage();
			} finally {
				conn.close();
			}
		%>
	</table>
	
</body>
</html>