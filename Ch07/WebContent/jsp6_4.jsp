<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
		이름 :<%= request.getParameter("name")%>
		나이 : <%=request.getParameter("age")%>
		
		앞에서 저장 :<%=request.getAttribute("name2")%>
		앞에서 저장 :<%=request.getAttribute("age2")%>

		
</body>
</html>