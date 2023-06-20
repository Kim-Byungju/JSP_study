<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="dbconnection.Database, java.sql.*"%>
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
		String dept = request.getParameter("dept");
		String name = request.getParameter("name");
		String grade = request.getParameter("grade");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		Database db = new Database();
		Connection conn = db.getConn();
		
		Statement stmt = conn.createStatement();
		
		try {
			int res = stmt.executeUpdate(
				    "update 학생 set 소속학과='" + dept + "', 학생이름='" + name + "', 학년='" + grade + "', 성별='" + gender + "', " +
				    "나이='" + age + "', 전화번호='" + phone + "', 주소='" + address + "' " +
				    "where 학생번호='" + code + "';"
				);

			if(res<1){
				out.print("수정되지않았습니다");
			}else {
				out.print("수정되었습니다");
			}
		} catch(Exception e){
			out.print(e.getMessage());
		} finally{
			try{
				if(stmt != null){
					stmt.close();
				}
				if(conn != null){
					conn.close();
				}
			} catch(Exception e){}
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp7_5.jsp");
		dispatcher.forward(request, response);
		
	%>
</body>
</html>