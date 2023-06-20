<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("xbj3812") && pw.equals("5423")){
			Cookie cookie = new Cookie("ID","ADMIN");
			response.addCookie(cookie);
			
			out.print("로그인되었습니다.");
			out.print("<a href='jsp7_3.jsp'>메인페이지로이동</a>");
		} else {
			out.print("로그인 실패");
			out.print("<a href='jsp7_1.jsp'>로그인 화면으로 될돌아가기</a>");
		}
	%>
</body>
</html>