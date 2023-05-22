<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.File"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>이동되어온 두번쟤 페이지입니다.</h3>
	<%	
		//request 객체를 읽기
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		
		//session객체에 값설정
		session.setAttribute("ID", "JIMMY");
		
		//request.객체에 값설정
		request.setAttribute("name", name);
		request.setAttribute("age", age);
		request.setAttribute("request_Date", new java.util.Date());
		
		//application 객체의 값설정
		application.setAttribute("tmp_file", new File("C:\\Users\\admin\\Desktop\\KBJ"));
		
		pageContext.forward("jsp6_3.jsp");
	%>
</body>
</html>