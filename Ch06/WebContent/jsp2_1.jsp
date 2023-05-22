<!-- 
	application 객체
		. 웹 어플리케이션당 한개의 객체만 생성한다.
		. 특정 웹어플리케이션에 포함된 모든 JSP페이지는 하나의 application객체를 공유합니다.
		. 현재 웹어플리케이션이 실행되고 있는 서버의 자원정보를 담고있다.
		. 실행시 발생한 이벤트들에 대한 로그를 저장하기 위한 기능제공
		. 객체의 공유도 가능하게 해준다.
		
		- getInitParamete(String str) : web.xml에 설정한 파라미터값을 읽어온다.
		- getInitParameterNames() : web.xml에 설정한 파라미터가 전체를 읽어온다.(Enumeration)
		- getAttributeNames() : application 객체의 속성들을 가져온다.
		
		- getMajorVersion(); 컨테이너가 지원하는 Major버전
		- getMinorVersion() 
		 
		- getRealPath(String path) : 실제경로를 가져온다.
		- getContext(String path) : 자원의 경로의 컨텍스트 정보를 가져온다.
		- getServerInfo() : JSP컨테이너의 이름과 버전을 가져온다.
	
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
	<h3>application의 객체는 서버와 자원의 정보를 담고있으면서 모든 JSP가 공유한다.</h3>
	<br>
	<%="JSP컨테이너 이름과 버전정보 : "+application.getServerInfo() %><br>
	<%="JSP컨테이너 Major버전 : "+application.getMajorVersion() %> <br>
	<%="JSP컨테이너 Minor버전 : "+application.getMinorVersion() %> <br>
</body>
</html>