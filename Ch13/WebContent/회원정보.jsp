<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.MemberDAO, member.MemberDTO"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	
	MemberDAO dao = new MemberDAO();
	MemberDTO memberDTO = dao.getMember(id);		
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원정보</h3>
	<form action="update.jsp">
		<table border="1">
			<tr>
				<td>아이디<td/>	
				<td><input type="text" name="id" value="<%=memberDTO.getId() %>"><td/>
			</tr>
			<tr>
				<td>비밀번호<td/>
				<td><input type="text" name="pass" value="<%=memberDTO.getPass() %>"><td/>
			</tr>
			<tr>
				<td>이름<td/>			
				<td><input type="text" name="name" value="<%=memberDTO.getName() %>"><td/>
			</tr>
			<tr>
				<td>전화번호<td/>			
				<td><input type="text" name="phone" value="<%=memberDTO.getPhone() %>"><td/>
			</tr>
			<tr>
				<td>이메일<td/>			
				<td><input type="text" name="email" value="<%=memberDTO.getEmail() %>"><td/>
			</tr>
			<tr>
				<td>가입일자<td/>			
				<td><%=memberDTO.getReg_date() %><td/>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="수정" />
				<td/>
			</tr>
		</table>
		<a href = "전체회원조회.jsp">전체회원목록</a>&nbsp;<a href = "로그아웃.jsp">로그아웃</a>&nbsp;<a href = "remove.jsp?<%=id%>">회원삭제</a>
	</form>
</body>
</html>