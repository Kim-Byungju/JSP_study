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
		/* 특정한 쿠키값 삭제 */
		Cookie[] cookies =  request.getCookies();
		if(cookies != null && cookies.length>0) {
			for(int i=0; i<cookies.length; i++){
				
				if(cookies[i].getName().equals("ID")){ //검색
					
					Cookie cookie = new Cookie("ID",""); //값 변경(삭제)
					cookie.setMaxAge(0); //유효시간 0으로 설정 , 유효시간 경과 후 삭제
					response.addCookie(cookie);
					
					out.print("쿠키가 삭제 되었습니다.");  //별도 삭제 메소드 없음....
				}
			}
		}
	%>
</body>
</html>