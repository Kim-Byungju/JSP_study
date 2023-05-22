<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	img{
	width = 100px;
	height = 100px
	}

</style>
</head>
<body>
<!-- 	

	4시~12시 : Good Morning!
	12시~18시 : Good Afternoon!
	18시~22시 : Good Evening!
	그외 : 굿나잇
	//이미지도 추가 
	
	-->
	<%
	Calendar now = Calendar.getInstance();
	
	int hh = now.get(Calendar.HOUR_OF_DAY);
	
	if(hh>=4 && hh<12){
		out.print("<img src='./img/지구.jpg'>Good Morning!");
	} else if(hh>=12 && hh<18) {
		out.print("<img src='./img/지구.jpg'>Good Afternoon!");
	} else if(hh>=18 && hh<22) {
		out.print("<img src='./img/지구.jpg'>Good Afternoon!");
	} else {
		out.print("<img src='./img/지구.jpg'>Good Evening!");
	}
		
	
	%>
	
	
	
</body>
</html>