<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 	request.setCharacterEncoding("utf-8");
 	String num = request.getParameter("num");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>구구단<%=num %>출력 시마스</h3>
	<hr>
	<%
		response.setContentType("text/html;charset=utf-8");
		
		int dan = Integer.parseInt(num);
		for(int su=1; su<=9; su++){
			out.print(dan+"*"+su+"="+(dan*su)+"<br>");
		}
	%>
</body>
</html>