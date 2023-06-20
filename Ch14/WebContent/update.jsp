<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="member" class="member.MemberDTO" scope="page"/>
	<jsp:setProperty property="*" name="member"/>
	<jsp:useBean id="data" class="member.MemberDAO" scope="page"/>
	
	<%
		String id = (String)session.getAttribute("ID");
		if(id != null){
			if(data.updateMember(member) !=0){
				out.print("<h3>회원정보 수정에 성공하였습니다.</h3>");
				out.print("<h3><a href='info.jsp'>회원정보 보기</a></h3>");
			} else {
				out.print("<h3>회원정보 수정에 실패하였습니다.</h3>");
				out.print("<h3><a href='login.jsp'>로그인하기</a></h3>");
			}
		}
	%>
</body>
</html>