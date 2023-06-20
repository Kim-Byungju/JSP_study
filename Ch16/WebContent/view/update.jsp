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
	<%
		request.setCharacterEncoding("utf-8");
	
		int res = (int)request.getAttribute("UPDATE_RESULT");
		String id = (String)request.getAttribute("ID");
		String pw = (String)request.getAttribute("pass");
		
		if(res>0){
			out.print("<h3>회원정보 수정에 성공하였습니다.</h3>");
	%>
		<h3><a href="MemberController?cmd=member_info&ID=<%=id %>&pass=<%=pw%>">수정된 회원정보 확인</a></h3>
	<%
		} else {
			out.print("<h3>회원정보 수정에 실패하였습니다.</h3>");
		}
	%>
</body>
</html>