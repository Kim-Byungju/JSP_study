<%@page import="dao.MemberDTO"%>
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
<script type="text/javascript">
	function check(member_id) {
		pwd = prompt("회원탈퇴를위해 비밀번호 입력")
		if(pwd === frm.pass.value ){
			document.location.href="MemberController?cmd=member_delete&ID="+member_id+"&pass="+pwd;	
		} else {
			alert("비밀번호가 틀립니다");
			history.go(0);
		}
	}
</script>
</head>
<body>
	<div>
		<%
			String id = (String)session.getAttribute("ID");  
		
			MemberDTO member = (MemberDTO)request.getAttribute("member");
			
			if(id != null){
		%>		
		<form action="MemberController" name="frm" method="get">
		<input type="hidden" name="cmd" value="member_update">
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
		<%	} else {
				response.sendRedirect("index.jsp");
			}
		%>
		<a href="MemberController?cmd=member_list">전체회원</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="MemberController?cmd=member_logout">로그아웃</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="javascript:check('<%=member.getId()%>')"><%=member.getId() %>님 회원탈퇴</a>
	</div>
</body>
</html>