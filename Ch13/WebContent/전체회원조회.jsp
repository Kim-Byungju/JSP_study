<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.MemberDAO, member.MemberDTO, java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>전체회원목록</h3>
	<%
		request.setCharacterEncoding("utf-8");
		
		MemberDAO dao = new MemberDAO();
		ArrayList<MemberDTO> memberList = dao.getDBList();	
	%>
	<table border='1'>
		<tr>
			<td>아이디</td><td>비빌번호</td><td>이름</td><td>전화번호</td><td>이메일</td><td>가입일</td>
		</tr>
	<%
		for (MemberDTO member : memberList) {
		    out.print("<tr><td>"+member.getId()+"</td><td>"+member.getPass()+"</td><td>"+member.getName()+"</td><td>"+member.getPhone()+"</td><td>"+member.getEmail()+"</td><td>"+member.getReg_date()+"</td></tr>");
		}
	%>
	</table>
	<%
		out.print("---------------------------------------<br>");
		for(int i=0; i<memberList.size(); i++){
			MemberDTO account = memberList.get(i);
			out.print(account.getId()+"<br>");
			out.print(account.getPass()+"<br>");
			out.print(account.getName()+"<br>");
			out.print(account.getPhone()+"<br>");
			out.print(account.getEmail()+"<br>");
			out.print(account.getReg_date()+"<br>");
		}
	%>
</body>
</html>