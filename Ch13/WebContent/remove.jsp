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
		
		out.println(id);//넘어오지않음, 앵커태그로받아서 그런거같음?
		
		MemberDTO dto = new MemberDTO();
		dto.setId(id);
		
		MemberDAO dao = new MemberDAO();
		dao.removeMember(dto.getId());
		
		out.print("<h2>회원정보를 삭제하였습니다</h2>");

	%>
	<a href="index.jsp">로그인화면으로 돌아가기</a>
</body>
</html>