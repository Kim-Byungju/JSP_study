<%@page import="java.util.HashMap"%>
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
		HashMap<String,String> hm = new HashMap<>();
		hm.put("k1", "사과");
		hm.put("k2", "바나나");
		hm.put("k3", "키위");
		hm.put("k4", "딸기");
		
		request.setAttribute("fruits", hm);
		
		RequestDispatcher rd = request.getRequestDispatcher("jsp4_2.jsp");
		
		rd.forward(request, response);
		
	%>
</body>
</html>