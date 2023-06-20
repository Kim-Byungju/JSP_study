<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <jsp:useBean id="dsa" class="dsdsad" scope="request"></jsp:useBean> --%>
	<jsp:setProperty property="" name=""/>
	<jsp:getProperty property="" name=""/>



	<h3>계산 결과</h3>
	
	덧셈 : ${param.num1}+${param.num2} = ${param.num1+param.mum2 }<br>   
	뺄셈 : ${param.num1}-${param.num2} = ${param.num1-aram.mum2 }<br>
	
	
	삼항연산 : ${param.num1 == param.num2 ? "같다":"다르다"}
	
</body>
</html>