<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%!
	static int sum(int a){
		int sum=0;
		for(int i=1; i<a; i++){
			sum += i;
		}
		return sum;
	}
	%>
<body>
	<h3>스크립트릿에서 정의해놓은 메서드를 호출해서 사용</h3>
	<hr>
	<%
		int s1 = sum(100);
		int s2 = sum(1000);
		
	%>
	1부터 100까지 숫자의 합은 <%= s1 %>입니다.<br>
	1부터 1000까지 숫자의 합은 <%= s2 %>입니다.<br>

</body>
</html>