<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.MemberDTO, member.MemberDAO" session="true"%>
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
			String pw = request.getParameter("pass");
	%>
	<jsp:useBean id="data" class="member.MemberDAO" scope="request"/>
	<%
		if(data.isMember(id, pw)){
			session.setAttribute("ID", id);
			response.sendRedirect("info.jsp");
		}
	%>
	<h3>죄송합니다., 등록된회원이 아닙니다. 회원등록으로 가시겠습니까?</h3>
	<a href="register_form.jsp">회원등록으로 가기</a>

</body>
</html>


