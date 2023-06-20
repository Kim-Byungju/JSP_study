<%@page import="java.util.StringTokenizer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String str = "korea, japan, usa, england";
		StringTokenizer st = new StringTokenizer(str,",");
		while(st.hasMoreElements()){
			String s = (String)st.nextElement();
			out.print(s+"<br>");
		}
	%>
	<hr>
	<c:forTokens items="korea, japan,this is country,usa" delims="," begin="1" end="3" step="1" varStatus="status">
		해당위치의값 :${country }<br>
		현재인덱스 해당값 :${status.current }<br>
		현재반복횟수 : ${status.count }<br>
		현재인덱스 : ${status.index }<br>
		
		---------------------------------------------<br>
	</c:forTokens>
</body>
</html>