<!-- 
	쿠키의 유효시간
		- 생성된 쿠키를 사용할 수 있는 시간
		- 경과하면 자동삭제
		- 유효시간이 남아있는 쿠키는 웹브라우저 종료후에도 삭제되지않고 서버에 남아있다가 다시 접속하면 재사용 가능
		- 시간을 정하지않으면, 실행중인 동안만 서버에 남게되고 종료시 삭제된다.
		- 응답처리에 대한 내용이 출력 버퍼에 쌓인다가 다 차면 (강제로 비워라) 라는 상황이 발생하면  응답헤더/ 바디가 전송되고 이후는 새로운 쿠키를 생성 할수 없다. 


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
	<%
		Cookie cookie = new Cookie("name","JSP");
	
		cookie.setMaxAge(60*60*24); //24시간 
		response.addCookie(cookie);
	%>
	<a href="jsp2_2.jsp">쿠키 확인하러가기</a> 
</body>
</html>