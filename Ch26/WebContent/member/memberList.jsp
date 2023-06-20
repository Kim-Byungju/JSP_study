<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body align="center">
	<jsp:include page="/Header.jsp" />
	<h1>회원목록</h1>
	<p><a href="add.do">신규회원</a></p>
	<c:forEach var="member" items="${members }" >
		${member.no },
		<a href="update.do?no=${member.no }">${member.name }</a>,
		${member.email },
		${member.createdDate },
		<a href="delete.do?no=${member.no }">[삭제]</a><br>
	</c:forEach>
	
	<jsp:include page="/Footer.jsp" />
</body>
</html>