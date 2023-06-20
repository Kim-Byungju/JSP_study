<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="/error/dberror.html" %>
<%@ page import="dbconnection.Database" %>
<%
	request.setCharacterEncoding("utf-8");
	String code = request.getParameter("code");
	
	Database db = new Database();
	Connection conn = db.getConn();
	
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select * from 학생 where 학생번호= '"+code+"';");
	
	try{
		while(rs.next()){
			String department = rs.getString("소속학과");
			String name = rs.getString("학생이름");
			int grade = rs.getInt("학년");
			String gender = rs.getString("성별");
			int age = rs.getInt("나이");
			String phone = rs.getString("전화번호");
			String address = rs.getString("주소");
			
			request.setAttribute("CODE", code);
			request.setAttribute("DEPT", department);
			request.setAttribute("NAME", name);
			request.setAttribute("GRADE", grade);
			request.setAttribute("GENDER", gender);
			request.setAttribute("AGE", age);
			request.setAttribute("PHONE", phone);
			request.setAttribute("ADDRESS", address);
		}
	} catch (Exception e) {
		out.print(e.getMessage());
	} finally {
		try {
			if(stmt != null){
				stmt.close();
			}
			if(conn != null) {
				conn.close();
			}
		} catch(Exception e){}
	}
	RequestDispatcher dispatcher = request.getRequestDispatcher("jsp7_3.jsp");
	dispatcher.forward(request, response);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>