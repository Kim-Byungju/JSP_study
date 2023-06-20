<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8"); 
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("admin") && pw.equals("1234")){
			session.setAttribute("LOGIN", id);
			/* out.print("로그인 완료 환영합니다."); */
			response.sendRedirect("jsp6_1.jsp");  //로그인 후 메인페이지 이동
		
		} else {
			out.print("로그인 실패");
			out.print("<a href='jsp6_1.jsp'>로그인창 다시가기</a>");
		}
	%>
	<a href="jsp6_3.jsp">메인페이지로 이동</a>

</body>
</html>