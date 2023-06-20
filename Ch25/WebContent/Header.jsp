<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div style="text-align: center; font-size: 15px; background-color: #00008b;
			color:#ffffff; height: 140px; padding: 50px; ">			
	<h1 style="text-align: center;">My Project Management System</h1>
	
	<!-- 
		sessionScope
			HttpSession session = request.getSession();
			session.setAttribue("ID","admin");
			
			${sessionScope.ID} 로 간단하게 사용할 수 있다.	
	-->
	
	<c:if test="${!empty sessionScope.member and !empty sessionScope.member.email }">
		<span style="float:right;margin-right: 50px;">
			안녕하세요 ${sessionScope.member.name }님! 환영합니다<br><br>
			<a style="color:white;text-align: top;" 
				href="<%=request.getContextPath()%>/auth/logout.do">로그아웃</a>
					
	<!-- 				
					
	      http://localhost:8080/프로젝트명/auth/login?pageNo=1&pageSize=10
	      
	      .getRequestURL() 		http://localhost:8080/프로젝트명/auth/login
	      .getRequestURI()                           /프로젝트명/auth/login
	      .getContextPath()                          /프로젝트명
	      .getServeltPath()                                  /auth/login
	      .getQeuryString()                                             pageNo=1&pageSize=10
					
					
	-->
		</span>
	</c:if>

</div>    