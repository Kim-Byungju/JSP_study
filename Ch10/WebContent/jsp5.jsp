<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%HttpSession httpSession = request.getSession(); %>
	
<body>
	<h3>
		세션아이디1<%=session.getId()%>
		세션아이디2<%=httpSession.getId()%>
	</h3>
</body>
</html>