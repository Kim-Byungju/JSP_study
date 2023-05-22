<!-- 
	ip v4, ip v6
		- ip4 
				0:0:0:0:0:0:0:1 >> 32비트 >> 43억개 주소
		- ip6 
				128비트 >> 43억*43억*43억*43억개의 주소 >> IOT가능


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
	request.setCharacterEncoding("euc-kr");
	response.setContentType("text/html; charset=UTF-8");
%>
	<ul>
		<li>클라이언트에 IP주소 : <%=request.getRemoteAddr() %></li>
		<li>요청정보의 길이 : <%=request.getContentLength() %></li> <!-- 길이를 모르면 -1 리턴 -->
		<li>받은문서의 인코딩 : <%=request.getCharacterEncoding() %></li> 
		<li>전송문서의 인코딩 : <%=response.getCharacterEncoding() %></li>
		<li>문서타입 : <%=response.getContentType() %></li>
		<li>전송방식 : <%=request.getMethod() %></li>
		<li>요청 URI : <%=request.getRequestURI() %></li>
		<li>서블릿 경로 : <%=request.getServletPath() %></li>
	</ul>
</body>
</html>