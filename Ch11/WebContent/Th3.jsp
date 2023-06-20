<!-- 
	<페이지전환방법>
	(@ include file="")
	pageContext.forward() / include()
	<jsp:forward page=""> <jsp:include page="">
	response.sendRedirect()
	RequestDispatrcher rd >> rd.forward()/ rd.include()
	<a href="">
	
	html >> jsp
	jsp >> jsp
	servlet >> jsp
	html >> servlet
	
	<데이터 저장>
	.pageContext, request. application. session, cookie



 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 방법1: 스크립트릿안에서 자바객체생성후 결과값을 setAttribute()해놓는다.
	방법2: 자바빈을 활용해서 속성값 설정해서 객체생성하여 setAttribute()
	
	
	
	
	
	별도 페이지 (프리젠테이션 페이지)로 이동하여 처리
	출력
	방법1 : 표현식(%= %)
	밥법2 : EL로 출력
	
	
	
	
	--%>
	

</body>
</html>