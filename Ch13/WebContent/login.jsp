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
		String pass = request.getParameter("pass");
		
		MemberDAO dao = new MemberDAO();
		
		if(dao.isMember(id, pass)){	
			/* response.sendRedirect("http://localhost:8080/Ch13/회원정보.jsp?id="+id+"&pass="+pass); */
			String url = "회원정보.jsp?id=" + id + "&pass=" + pass;
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} else {
			out.print("<h3>죄송합니다. 등록된 회원이 아닙니다. 신규회원등록으로  돌아가시겠습니까?</h3>");
			out.print("<a href='index.jsp'>로그인창 다시가기</a><br>");
			out.print("<a href='신규회원가입.jsp'>회원 가입하러가기</a><br>");
		}
	%>
</body>
</html>


