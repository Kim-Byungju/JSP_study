<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>pageContext 객체는 페이지당 하나씩 생기는 객체이다.</h3>
	<%
		out.print("이것은 out.print()메서드를 이용해서 출력한 것입니다.<br>");
		pageContext.getOut().print("이것은 pageContext.getOut()으로 출력한 것입니다.<br>");
		
		
		// 방법1
		//response.sendRedirect("jsp1_2.jsp?name=A");
		
		//방법2
		pageContext.forward("jsp1_2.jsp");
	%>
</body>
</html>