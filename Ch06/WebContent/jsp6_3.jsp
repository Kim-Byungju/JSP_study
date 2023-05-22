<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>이동되어온 세번쟤 페이지입니다.</h3>
	<%
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
	%>
	request객체- name : <%=request.getAttribute("name") %><br>
	request객체- age : <%=request.getAttribute("age") %><br>
	request객체- request_Date : <%=request.getAttribute("request_Date") %><br>
	
	<hr>
	session 객체  :<%=session.getAttribute("ID") %><br>
	<hr>
	application객체: <%=application.getAttribute("tmp_file")%>
	
	<%
		pageContext.forward("./jsp2_1.jsp");
	%>
	<a href="./jsp2_1.jsp">이동합니다.</a>
	
</body>
</html>