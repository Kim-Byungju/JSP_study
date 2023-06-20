<!-- 
	*세션삭제 
		- invalidate() : 더이상 사용할 필요가 없을때 서버에저장된 섹션 삭제 
		- 서버와 함께 저장되어있는 데이터정보가 삭제된다.
		- 브라우저가 종료되면 세션도 삭제된다.
		
	* 삭제방법
		1) invalidate()
		2) 유효시간을 설정해서 자동삭제


 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
 <% session.invalidate();%> <!-- 세션 삭제 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>세션삭제</h3>
	<a href="jsp2_2.jsp">여기 클릭(☞ﾟヮﾟ)☞ </a>클릭하면 확인가능
</body>
</html>