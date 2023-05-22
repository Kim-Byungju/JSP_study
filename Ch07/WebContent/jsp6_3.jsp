<%@page import="java.net.URLEncoder"%>
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
		request.setCharacterEncoding("utf-8");
		String name1= request.getParameter("name");
		String age1= request.getParameter("age");
		out.print("첫번쨰 페이지에서 넘긴값"+name1+","+age1);
		
		out.print("<hr>");
		
		String name2 = (String)request.getAttribute("name");
		String age2 = (String)request.getAttribute("age");
		out.print("e두번쨰 페이지에서 넘긴값"+name2+","+age2);
		
		out.print("<hr>");
		
		//sjp6_4f sendRedirect()로 이동
		request.setAttribute("name2", name2);
		request.setAttribute("age2", age2);
		
		String url="jsp6_4.jsp?name=";
		String e_name = URLEncoder.encode("나길동","utf-8");
		String e_age = URLEncoder.encode("30","utf-8");
		response.sendRedirect(url+e_name+"%age"+e_age);
		// reauest속의 name과 age출력
		
	%>
</body>
</html>