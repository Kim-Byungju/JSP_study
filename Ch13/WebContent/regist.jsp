<%@page import="javax.websocket.SendResult"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.MemberDAO, member.MemberDTO"%>
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
		String name = request.getParameter("name");
		String pass = request.getParameter("pass");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
		MemberDTO dto = new MemberDTO();
		dto.setId(id);
		dto.setName(name);
		dto.setPass(pass);
		dto.setPhone(phone);
		dto.setEmail(email);
		
		MemberDAO dao = new MemberDAO();
		dao.insertMember(dto);
		
		out.print("<h3>회원가입에 성공하였습니다.</h3>");
	%>
	<a href="index.jsp">로그인하러가기</a>
</body>
</html>