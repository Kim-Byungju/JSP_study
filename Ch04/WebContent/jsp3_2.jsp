<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>요청 파라미터를 읽어온다</h3>
	<hr>
	이름 : <%=request.getParameter("name") %><br>
	전화번호 : <%=request.getParameter("phone") %><br>
	성별 : <%=request.getParameter("gender") %><br>
	좋아하는 운동 :
		<%
			String[] sports = request.getParameterValues("sports");
			if(sports != null) {
				for(int i=0; i<sports.length; i++){
					out.print(sports[i]+"");
				}
			}
		%><br>
	가장 좋아하는 계절 : <%=request.getParameter("season") %><br> 
	<hr>
	<!-- 한꺼번에 전부 출력 -->
	<%
		Enumeration p =request.getParameterNames();
		Map m  = request.getParameterMap();
	/* 		Map (키            value[])
		p------> 이름           홍길동
				전화번호     010-1111-2222
				성별                 남자
			좋아하는 운동       축구 야구 농구
	*/	
	while(p.hasMoreElements()){
			String name = (String)p.nextElement(); //이름을 가져온것이다.
			String[] values = (String[])m.get(name);
				out.print(name+":");
			
			if(values != null){
				for(String v :values){
					out.print(v+"<br>");
				}
			}
		}
	%>
</body>
</html>