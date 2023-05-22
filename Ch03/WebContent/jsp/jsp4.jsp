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
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
		
		response.setContentType("text/html; charset=UTF-8");
		
		if(id != null && (id.length()!=0)){
			if(id.equals("admin") && pw.equals("1234")){
				out.print("<h3>관리자로 로그인</h3>");
				out.print("<input type='button' value='회원수정'>&nbsp;");
				out.print("<input type='button' value='회원삭제'>");
			}
			//일반
			else {
				out.print(id+"님! Guest 계정으로 로그인. 환영합니다.");
			}
			
		}else{
			out.print("아이디와 비밀번호 입력");
			out.print("<a href='http://localhost:8080/Ch03'>로그인창으로 이동</a>");
		}

	%>
</body>
</html>