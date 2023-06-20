<!-- 


 -->
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
		int sum=0;
		for(int i=1; i<=10; i++){
			sum += i;
		}
		out.print("1~10까지 합은"+sum+"입니다.");
	%>
	<c:forEach var="i" begin="1" end="100" step="1">
		<c:set var="result" value="${result+i}"/>
	</c:forEach>
	1~100까지합은 ${result}입니다.
	
	<hr>
	<c:set var="arr" value="<%=new int[]{1,2,3,4,5,6,7,8,9,10} %>"/>
	<table border="1">
		<tr><td>배열원소값</td><td>현재반복횟수</td><td>인덱스</td></tr>
		<c:forEach var="i" items="${arr }" begin="2" end="4" varStatus="status">
			<tr><td>${i}(${status.current })</td><td>${status.count}</td><td>${status.index}</td></tr>
		</c:forEach>
	</table>
</body>
</html>