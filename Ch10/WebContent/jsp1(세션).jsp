<!-- 
	session 객체
		.세션 : 서버(톰캣)에 저장되는 데이터이다.
	
	* 활용 비교(세션vs쿠키)
		- 세션 : 로그인이나 보안상 중요한 작업에 활용
		- 쿠키 : ....활용?
		
	* 생성 : 클라이언트가 접속하면 자동으로  생성, 
			고유한 ID를 발생 >> 클라이언트에 전송 >> 세션ID로 접속
			
	* 특징 
		- 각 클라이언트에게 고유헌 ID
		- 세션 ID로 클라이언트를 구분해서 클라이언트의 요구에 맞게 서비스 제공
		- 보안면에서 쿠키보다는 쿠키보다 우수
		- 사용자가 많아 질수록 서버에 메모리를 많이 차지하게 된다. 
	
	*메소드
		- getId()
		- getCreationTime() : 세션 생성 시간(밀리초)
		- getLastAccessedTime() : 마지막 접근시간
		- getMaxInterval(long) : 유효시간
		- invalidate() : 세션삭제
		- getAttribute(), setAttribute()
		
	* 자동생성
		 - session="true"

 -->
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Date c_time = new Date(); // 생성시간
		Date m_time = new Date(); // 마지막 접속시간
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		
		c_time.setTime(session.getCreationTime());
		m_time.setTime(session.getLastAccessedTime());
	%>
	<h3>
		세션 아이디 : <%=session.getId() %><br>
		세션 생성시간 : <%=formatter.format(c_time) %><br>
		세션 마지막접속시간 : <%=formatter.format(m_time) %><br>
	</h3>
</body>
</html>