<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		boolean isLogin = false;
		
		if(cookies != null && cookies.length>0){
			for(int i=0; i<cookies.length; i++){
				String cookie_name = cookies[i].getName();
				String cookie_value = cookies[i].getValue();
				
				if(cookie_name.equals("ID") && cookie_value.equals("ADMIN")){
					isLogin = true;
					break;
				}
			}
		}
	
	%>

</body>
</html>