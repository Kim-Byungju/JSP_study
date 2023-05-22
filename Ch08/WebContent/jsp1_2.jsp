<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="javabean.Msg"%>
<%	request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <%
		String msg = request.getParameter("msg");
		out.print(msg);
		
		String mss = request.getParameter("msg");
		Msg msg2 = new Msg();
		msg2.setMsg(mss);
		out.print("Message 값:" +msg2.getMsg());
	%> --%>
	<jsp:useBean id="ms" class="javabean.Msg" scope="page"/>
	<jsp:setProperty name="ms" property="msg"/>
	자바빈 활용 메세지값: <jsp:getProperty name="ms" property="msg" />
</body>
</html>