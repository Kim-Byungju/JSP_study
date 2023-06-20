<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dao" class="member.MemberDAO" scope="page"/>
	<%
		String id = (String)session.getAttribute("ID");
	
		if(id != null) {
			int result = dao.removeMember(id);
			if(result !=0){
				out.print("<h3>회원정보를 삭제하였습니다.</h3>");
				session.invalidate();
				out.print("<h3><a href='index.jsp'>로그인으로 가기</a></h3>");
			} else {
				out.print("<h3>회원정보를 삭제하지 못하였습니다. 잠시후 다시 해주세요.</h3>");
				out.print("<h3><a href='info.jsp'>회원정보 보기로 돌아가기</a></h3>");
			} 
		} else {
			out.print("<h3>로그인이 필요합니다.</h3>");
			response.sendRedirect("index.jsp");
		}
	%>
</body>
</html>