<!-- 
	scope
		;웹 어플리케이션에 포함되어있는 JSP페이지의 사용영역을 말한다.
		;종류
			- page
			 	.page영역내에서 데이터를 공유할 목적으로 사용 (pageContext)
			 	.jsp페이지의 처음부터 끝까지를 영역으로 한다.
			 	.모든 JSP페이지는 한개의 page영역을 갖고 JSP페이지를 벗어나면 
			 		page영역을 벗어나게된다.
			- request
				. 응답이 이루어질때까지 여러 JSP페이지 안에서 데이터를 공유할 수있다.
				. include, forward로 페이지를 이동하고
				. setAttribute(), getAttribute()로 값을 공유한다.
				. 웹브라우저의 주소에 URL을 입력하거나,
					링크를 클릭해서 페이지를 이동할때 웹브라우저가 웹서버에 요청을 전송하는
					request가 생성된다.(웹브라우저가 요청을 할때마다 생성)
				. 요청에 참여하고있는 페이지들은 request영역안에 존재하게된다.
				
			-session 
				.현재의 웹브라우저에게 실행되는 모든 JSP페이지들간의 공유할수 있다.
				.seeeion객체를 이용해서 로그인처리가 가능하다.
				.웹브라우저가 살아있는 동안의 범위를 나타낸다.
				. 세션이 생성되면 웹브라우저를 종료할떄까지 모든 요청들은 한개의 session영역에 포함된다.
			
			- application
				.웹 컨테이너 (WAS) 내에서  실행되는 모든 애플리케이션들의 모든 JSP페이지들이 공유된다.
				.주로 웹어플리케이션 설정정보, 웹어플리케이션 안에서 활용되어야할 테이터를 공유용도로 사용된다.
				.웹컨테이너가 구동되고면, 같은 어플리케이션에 속해있는 모든 페이지들은 한개의 application영역에 포함된다.
				.웹컨테이너가 종료되거나 재시작되면 사라진다.	
		
		.메소드
				setAttribute(String name, Object value)
				getAttribute(String name)
				removeAttribute(String name)
				getAttributeNames() Enumeration 


 -->
<%@page import="java.net.URLEncoder"%>
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
		String url = "jsp6_2.jsp?name=";
		String e_name = URLEncoder.encode("홍길동","utf-8");
		response.sendRedirect(url+e_name+"&age="+30);
	%>
</body>
</html>