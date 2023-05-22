<!-- 
	out객체 
		; JSP페이지에서 생성되는 모든 내용을 전달받는 객체이다.
		
		- getBufferSize() : 버퍼의 크기
		- getRemaining() : 현재버퍼에 남아있는 크기
		- clearBuffer() : 버퍼의 내용을 비운다.
		- flush() : 버퍼의 내용을 플러쉬하고 스트림을 닫는다.
		- isAutoFlush() : 버퍼가 가득찼을때 자동으로 플러쉬하고 true반환
		- print()
		- println()
		- newLine() : 줄바꾸기


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
	<h3>out내장객체는 JSP페이지에서 생성되는 내용을 모두 받는다.</h3>
	<%
		String str = "JSP programming";
	
		int sizeBuffer = out.getBufferSize(); //버퍼크기
		int size = out.getRemaining(); //현재 남아있는 버퍼크기
		boolean b = out.isAutoFlush();// 가득찼을떄 자동플러시		
	%>
	출력할 값 : <%=str %><br>
	버퍼의크기 : <%=sizeBuffer %><br>
	현재 버퍼의 크기 : <%=size %><br>
	자동플러시했는가? : <%=b %><br>
	
	<%
		out.print("오늘의 시간<br>");
		out.print(java.util.Calendar.getInstance().getTime());
		
	%>
</body>
</html>