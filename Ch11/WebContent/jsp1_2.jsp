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
	int num = Integer.parseInt(request.getParameter("num"));
	int sum=0;
	for(int i = 1; i<=num; i++){
		sum+=i;
	}
	request.setAttribute("sum", sum);
	
	RequestDispatcher rd = request.getRequestDispatcher("jsp1_3.jsp");
	rd.forward(request, response);
	/* rd.include(request, response); */
	%>
</body>
</html>