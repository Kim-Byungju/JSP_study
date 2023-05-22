<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>여기는 두번쨰페이지를 거쳐너어옴 세번쨰페이지입니다.</h3>
	<%
		String id_loginCheck = (String)request.getAttribute("아이디");
		String pw_loginCheck = (String)request.getAttribute("패스워드");
		out.print("Attribute - 아이디 : "+id_loginCheck+"<br>");		
		out.print("Attribute - 비밀번호 : "+pw_loginCheck+"<br>");		
	%>
	<%
		String id =  pageContext.getRequest().getParameter("id");
		String pw =  request.getParameter("pw");
		out.print("Form입력 - 아이디  :"+id+"<br>");
		out.print("Form입력 - 비밀번호  :"+pw+"<br>");
	%>
	<%
		pageContext.include("img.html");
	%>
</body>
</html>