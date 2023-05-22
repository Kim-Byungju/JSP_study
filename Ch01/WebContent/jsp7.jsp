<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<%!
		static int sum (int a, int b) {
		return a+b;
		}
	
		static int sub(int a, int b) {
			return a-b;
		}
		
		static int mul(int a, int b) {
			return a*b;
		}
		
		static int div(int a, int b) {
			return a/b;
		}
	
		%>
		
		<%
		int result1 = sum(5, 3);
		int result2 = sub(5, 3);
		int result3 = mul(5, 3);
		int result4	= div(5, 3);
		
		out.print(result1+"<br>");
		out.print(result2+"<br>");
		out.print(result3+"<br>");
		out.print(result4);
		
		%>

</body>
</html>