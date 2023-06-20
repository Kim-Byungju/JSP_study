<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,dao.MemberDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function chk(member_id) {
		pwd = prompt("수정/삭제하기위해 비밀번호를 입력해주세요");
		document.location.href="MemberController?cmd=member_info&ID="+member_id+"&pass="+pwd;
	}
</script>
</head>
<body>
	<jsp:useBean id="datas" class="dao.MemberDAO" scope="page"/>
	<%
		ArrayList<MemberDTO> members =  datas.getDBList();
	%>
	<div align="center">
		<h3>전체회원목록</h3>
		<hr>
		<form action="">
			[<a href="./view/register_form.jsp">신규회원등록가기</a>]<p>
			<table>
				<tr bgcolor="#99ccff">
					<th>아이디</th><th>비밀번호</th><th>이름</th><th>전화번호</th><th>이메일</th><th>가입일자</th>
				</tr>
				<%
					for(MemberDTO member:members){
				%>
				<tr>
					<td><a href="javascript:onclick=chk('<%=member.getId()%>')"><%=member.getId()%></a></td>
					<td><%=member.getPass()%></td>
					<td><%=member.getName()%></td>
					<td><%=member.getPhone()%></td>
					<td><%=member.getEmail()%></td>
					<td><%=member.getReg_date()%></td>
				</tr>
				<%
					}
				%>
			</table>
		</form>
	</div>
</body>
</html>