<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="data.Member"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setAttribute("nickName", "홍길동"); %>
	
<!-- 	
	. set의 기본형식
		- 변수도 "변수 "와 같이 쌍따옴표안에 작성
		- 값도 값와 같이 쌍따옴포안에 작성
		- 선택사항으로 sope를 작성해서 page. request. application session중 지정

 -->
 
	 <c:set var="name" value="값을 출력해봅니다." scope="request"></c:set>
	 
	 <!-- <C:set var="age" scope = "request">"변수의 값"</C:set> -->
	 
	 <c:out value="값을 출력 합니다."></c:out><Br>
	 <c:out value="${nickName}"></c:out><Br>
	 <c:out value="${name}"></c:out><Br>
 	
 	<c:remove var="name"/>
 	출력? : <c:out value="${name}"/><br>
 	
 	<%
 		Member m = new Member();
 		m.setName("홍딜동");
 		m.setFirstName("홍");
 		m.setLastName("길동");
 	%>
 	<%="스크립트릿으로 출력 : "+m.getName() %><br>
 	<%="스크립트릿으로 출력 : "+m.getFirstName() %><br>
 	<%="스크립트릿으로 출력 : "+m.getLastName() %><br><br>
 	<hr>
 	<%
 		request.setAttribute("member", m);
 	%>
 	EL로 저장 : ${member.setName("궁예") }<br>
 	EL로 저장 : ${member.setFirstName("궁") }<br>
 	EL로 저장 : ${member.setLastName("예") }<br><br>
 	
 	EL로 출력 : ${member.getName() }<br>
 	EL로 출력 : ${member.getFirstName() }<br>
 	EL로 출력 : ${member.getLastName() }<br>

 	<hr>
 	<jsp:useBean id="n" class="data.Member" scope="request"/>
 	<jsp:setProperty property="name" name="n" value="elon Musk"/>
 	자바빈으로 출력 : <jsp:getProperty property="name" name="n"/><br>
 	스크립트릿으로 자바빈을 출력: <%=n.getName() %><br>
 	EL로 자바빈을 출력 : ${n.getName()}<br>
 	<hr>
 	<c:set var="name1" value="<%=m.getFirstName()%>" scope="request"/>
 	<c:set var="name2" value="궁예"/>
 	<c:set var="name3" >궁예</c:set>
 	<c:set var="name4" value="${ m.getFirstName()}"/>
 	
 	JSTL을 EL로 출력 : name1 - ${name1}<br>
 	JSTL을 EL로 출력 : name2 - ${name2}<br>
 	JSTL을 EL로 출력 : name3 - ${name3}<br>
 	JSTL을 EL로 출력 : name4 - ${name4}<br>
 	
 	<hr>
 	JSTL에 target을 활용한 속성값 설정 <br>
 	<c:set target="m" property="name" value="을지문덕"/>
 	출력1: <%=m.getName() %><br>
 	<%-- 출력2: <c:out value="<%=m.getName() %>"/><br> --%>
 	
 	
 </body>
</html>