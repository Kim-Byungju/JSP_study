<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, dao.AddressBookDAO, dao.AddressBookDTO"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function check(ab_id) {
		pwd = prompt("수정/삭제하려면 비밀번호를 입력해주세요");
		document.location.href="AddressController?cmd=addressbook_edit&id="+ab_id+"&pw="+pwd;
	}
</script>
</head>
<body>
	<%
		ArrayList<AddressBookDTO> datas = 
			(ArrayList<AddressBookDTO>)request.getAttribute("list");
	%>
	<div align="center">
		<h3>주소록 목록</h3>
		<hr>
		<form action="">
			[<a href="addressbook_form.jsp">주소록 신규등록가기</a>]<p>
			<table border="1">
				<tr>
					<th>번호</th><th>이름</th><th>이메일</th><th>전화번호</th><th>생일</th><th>회사</th><th>메모</th>
				</tr>
				<%
					for(AddressBookDTO ab : datas) {
				%>
				 <tr>
				 	<td><a href="javascript:check(<%=ab.getId()%>)"><%=ab.getId()%></a></td>
				 	<td><%=ab.getName() %></td>
				 	<td><%=ab.getEmail() %></td>
				 	<td><%=ab.getTel() %></td>
				 	<td><%=ab.getBirth() %></td>
				 	<td><%=ab.getComdept() %></td>
				 	<td><%=ab.getMemo() %></td>
				 </tr>	
				<%	
					}
				%>
			</table>
		</form>
	</div>
</body>
</html>