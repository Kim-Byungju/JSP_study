<%@page import="java.text.DecimalFormat"%>
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
	<h3><%=num %>까지 합한 결과 입니다.</h3>
	<hr>
	<%
	response.setContentType("text/html;charset=utf-8");
	
	int input = Integer.parseInt(num);
	int sum=0;
	for(int i=0; i<=input; i++) {
		sum+=i;
	}
	DecimalFormat f = new DecimalFormat("#,###.#");
	out.print("<h3>1부터 "+num+"까지 합한 결과값은 "+f.format(sum)+"입니다.</h3>");
	
	%>
</body>
</html>