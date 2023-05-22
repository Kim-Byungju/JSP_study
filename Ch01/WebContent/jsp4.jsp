<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.lang.Math"%>
<%@page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	h2{
	color: blue;
	}
</style>
<script type="text/javascript"></script>
</head>
<body>
	<h2>이 페이진 오늘의 날짜와 시간을 출력해주는 페이지입니다.</h2>
	<hr>
	<p>오늘의 날짜와 시간은...........</p>
	<%
		Calendar now = Calendar.getInstance();
		int yy = now.get(Calendar.YEAR);
		int mm = now.get(Calendar.MONTH)+1;
		int dd = now.get(Calendar.DATE);
		
		out.print("<h3>"+yy+"년"+mm+"월"+dd+"일"+" ");
		int week = now.get(Calendar.DAY_OF_WEEK);
		switch(week){
		case 1: out.print("일요일"); break;
		case 2: out.print("월요일"); break;
		case 3: out.print("화요일"); break;
		case 4: out.print("수요일"); break;
		case 5: out.print("목요일"); break;
		case 6: out.print("금요일"); break;
		case 7: out.print("토요일"); break;
		}
		out.print("입니다</h3>");
	%>
</body>
</html>