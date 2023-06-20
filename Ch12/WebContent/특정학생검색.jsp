<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.sql.*" %>
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
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = 
			DriverManager.getConnection("jdbc:mysql://localhost:3306/myschool","root","mysql");
		
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(
				"select * from 학생 where 학생번호='"+code+"'"
				);
		while(rs.next()){
			String 소속학과 = rs.getString("소속학과");
			String 학생이름 = rs.getString("학생이름");
			int 학년 = rs.getInt("학년");
			String 성별 = rs.getString("성별");
			int 나이 = rs.getInt("나이");
			String 전화번호 = rs.getString("전화번호");
			String 주소 = rs.getString("주소");
			
			request.setAttribute("STUDENT_ID",code);
			request.setAttribute("STUDENT_MAJOR",소속학과);
			request.setAttribute("STUDENT_NAME",학생이름);
			request.setAttribute("STUDENT_GRADE",학년);
			request.setAttribute("STUDENT_GENDER",성별);
			request.setAttribute("STUDENT_AGE",나이);
			request.setAttribute("STUDENT_PHONE",전화번호);
			request.setAttribute("STUDENT_ADDRESS",주소);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("검색결과.jsp");
			
			dispatcher.forward(request, response);
			
			stmt.close();
			conn.close();
		}
		
	%>

</body>
</html>