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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("홍길동") && pw.equals("1234") ){   //회원체크
			Cookie cookie = new Cookie("ID", "ADMIN"); // 쿠키 생성
			response.addCookie(cookie);
			
			out.print("<h3>로그인되었습니다. 환영합니다.</h3>");
			out.print("<a href='jsp6_3.jsp'>메인페이지로 이동</a>");
		} else{
			out.print("<h3>로그인 실패 도둑놈시키잡아라</h3>");
			out.print("<a href='jsp6_1(로그인폼).jsp'>로그인 창으로 되돌아가기</a>");
		}
	%>
</body>
</html>