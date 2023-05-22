<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>web.xml에있는 파라미터값 가져오기</h3>
	<%
		//방법1 : 하나씩 가져오기
		String name = application.getInitParameter("name");
		String age = application.getInitParameter("age");
		String gender = application.getInitParameter("gender");
		String sports = application.getInitParameter("sports");
		pageContext.getOut().print("name : "+name+"<br>");
		out.print(age+"<br>");
		out.print(gender+"<br>");
		out.print(sports+"<br>");
		
		out.print("<hr>");
		//방법2 : 한번에 모두가져오기
		
		Enumeration e  = application.getInitParameterNames();
		while(e.hasMoreElements()){
			String str =  (String)e.nextElement();
			pageContext.getOut().print(str+"="+application.getInitParameter(str));
			out.print("<br>");
		}
	%>
</body>
</html>