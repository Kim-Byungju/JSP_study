<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function deletechk() {
		result = confirm("정말삭제하시겠습니까?");
		if(result){
			//document.frm.action.value="addressbook_controller.jsp?action=delete";
			document.frm.action.value="delete";
			document.frm.submit();
		}
	}

</script>
</head>
<body>
	<jsp:useBean id="ab" class="addressbook.AddressBookDTO" scope="request"/>
	<div align="center">
		<h2>주소록 수정</h2>
		[<a href="addressbook_controller.jsp?action=list">주소록목록으로 이동</a>]
		<form action="addressbook_controller.jsp" name="frm" method="post">
			<input type="hidden" name="id" value="<%=ab.getId()%>">
			<input type="hidden" name="action" value="update">
			<table border="1">
				<tr>
					<th>이름</th><td><input type="text" name="name" value="<%=ab.getName()%>"></td>
				</tr>
				<tr>
					<th>메일</th><td><input type="email" name="email" value="<%=ab.getEmail()%>"></td>
				</tr>
				<tr>
					<th>회사</th><td><input type="text" name="comdept" value="<%=ab.getComdept()%>"></td>
				</tr>
				<tr>
					<th>생일</th><td><input type="date" name="birth" value="<%=ab.getBirth()%>"></td>
				</tr>
				<tr>
					<th>번호</th><td><input type="text" name="tel" value="<%=ab.getTel()%>"></td>
				</tr>
				<tr>
					<th>메모</th><td><input type="text" name="memo" value="<%=ab.getMemo()%>"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit"  value="수정">&nbsp;
						<input type="reset"  value="취소" onclick="location.href='addressbook_controller.jsp?action=list'">&nbsp;
						<input type="button"  value="삭제" onclick="deletechk()">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>