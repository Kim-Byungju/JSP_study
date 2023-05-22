<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div{
		width: 500px; height: 300px;
		background-color: skyblue;
	}
</style>
</head>
<body>
	<div>
		<h3>포함될 sub페이지</h3>
		이름 : <%=request.getParameter("name") %><br>
		연락처 : <%=request.getParameter("phone") %>
		<%
			out.print("<hr><br> 이름 : ");
			String[] names = request.getParameterValues("name");
			for(int i = 0; i<names.length; i++){
				out.print(names[i]+" ");
			}
		
		%>
	</div>
</body>
</html>