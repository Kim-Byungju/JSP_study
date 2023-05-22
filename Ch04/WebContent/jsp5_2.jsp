<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>sendRedirect로 이덩해온 페이지입니다. 데이터를 읽어보세요</h3>
	<%
		//getAttribute()
		String name1 = (String)request.getAttribute("e_name");
		String addr1 = (String)request.getAttribute("e_addr");
		out.print("getAttribute : 이름 "+name1+",  주소 : "+addr1);
		//getParameter()
		
		/* 겟 다이렉트로 온페이지는 겟데이타파라미터로 데이터를  받는다 */
		String name2 = (String)request.getParameter("name");
		String addr2 = (String)request.getParameter("addr");
		out.print("getParameter: 이름 "+name2+", 주소 : " +addr2);
	%>
</body>
</html>