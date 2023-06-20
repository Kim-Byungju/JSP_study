<%@page import="member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="data" class="member.MemberDAO" scope="page"/>
	<div>
		<%
			String id = (String)session.getAttribute("ID");  
			MemberDTO member;
			
			if(id != null){
				 member = data.getMember(id);
		%>		
		<form action="update.jsp" method="post">
			<table border="1">
				<tr>
					<th colspan="2"><font>회원정보</font></th>
				</tr>
				<tr>
					<td>아이디</td><td><input readonly type="text" name="id" value="<%=member.getId()%>"></td>
				</tr>
				<tr>
					<td>비밀번호</td><td><input  type="password" name="pass" value="<%=member.getPass()%>"></td>
				</tr>
				<tr>
					<td>이름</td><td><input  type="text" name="name" value="<%=member.getName()%>"></td>
				</tr>
				<tr>
					<td>전화번호</td><td><input  type="text" name="phone" value="<%=member.getPhone()%>"></td>
				</tr>
				<tr>
					<td>이메일</td><td><input  type="text" name="email" value="<%=member.getEmail()%>"></td>
				</tr>
				<tr>
					<td>가입일자</td><td><%=member.getReg_date() %></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="수정"></td>
				</tr>
			</table>
		</form>
		<%	
			} else {
				response.sendRedirect("index.jsp");
			}
		%>
		<a href="memberList.jsp">전체회원</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="logout.jsp">로그아웃</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="delete.jsp?<%=id%>">회원탈퇴</a>
	</div>
</body>
</html>