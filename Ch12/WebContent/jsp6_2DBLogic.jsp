<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="DBerror.jsp"%>
<%@ page import="java.io.*, java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	
	String code = request.getParameter("code");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/myschool","root","mysql");
	
	Statement stmt = conn.createStatement();
	ResultSet rs =  stmt.executeQuery(
			"select * from goodsinfo where code='"+code+"'"
			);
	while(rs.next()){
		String title = rs.getString("title");
		String writer = rs.getString("writer");
		int price = rs.getInt("price");
		
		request.setAttribute("CODE", code);
		request.setAttribute("TITLE", title);
		request.setAttribute("WRITER", writer);
		request.setAttribute("PRICE", price);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp6_3RelultView.jsp");
		
		dispatcher.forward(request, response);
		
		stmt.close();
		conn.close();
	}
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