<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>객체의 메소드들을 실습</h3>
	<%
		request.setCharacterEncoding("utf-8");
		String protocol = request.getProtocol();
		String server = request.getServerName();
		int port = request.getServerPort();
		String clientIp = request.getRemoteAddr();
		
		String clientHost = request.getRemoteHost();
		String methodType = request.getMethod();
		String url = new String(request.getRequestURL());
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String browser = request.getHeader("User-Agent");
		String mediaType = request.getHeader("Accept");
		
		//헤더속에있는 모든 속성들을 가져와본다
		/* 
			Enumeration (iterator와 같다.)
				.boolean hasMoreElements()
				.String nextElements()
		
		*/
		
		Enumeration en = request.getHeaderNames();
		
		while(en.hasMoreElements()){
			String str = (String)en.nextElement();
			out.print(str+",");
		}
	%>
	<hr>
	프로토콜 : <%=protocol %><br>
	접속한서버명 : <%=server %><br>
	접속한서버의 포트번호 : <%=port %><br>
	클라이언트IP : <%=clientIp %><br>
	클라이언트 호스트명: <%=clientHost %><br>
	현재페이지 메소드방식: <%=methodType %><br>
	현재페이지 경로URL: <%=url %><br>
	현재페이지 URI: <%=uri %><br>
	웹어플리케이션 컨텍스트경로: <%=contextPath %><br>
	사용한웹브라우저: <%=browser %><br>
	웹브라우저가 지원하는 매체: <%=mediaType %><br>
	
	
</body>
</html>