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
		
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String id = request.getParameter("id");
		
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setPass(pass);
		memberDTO.setName(name);
		memberDTO.setPhone(phone);
		memberDTO.setEmail(email);
		memberDTO.setId(id);
		
		MemberDAO update = new MemberDAO();
		int result = update.updateMember(memberDTO);
		
		boolean isSuccess = (result>0);
		
		if(isSuccess){
			RequestDispatcher dispatcher = request.getRequestDispatcher("update_2.jsp");
			dispatcher.forward(request, response);
		} else {
			out.print("<h2>회원정보수정 실패<h2>");
		}
	%>
</body>
</html>