<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="member" class="dao.MemberDTO" scope="page"/>
	<jsp:setProperty property="*" name="member"/>
	<jsp:useBean id="dao" class="dao.MemberDAO" scope="page"/>
	
	<%	
		String id = member.getId();
		String pass = member.getPass();
		
		if(!dao.isMember(id, pass)){
			if(dao.insertMember(member) != 0){
				out.print("<h3>회원가입에 실패했습니다. 잠시후 다시 시도해주세요.</h3>");
				out.print("<h3><a href='register_form.jsp'>회원가입 다시하기</a></h3>");
			} else {
				out.print("<h3>회원가입에 성공했습니다.</h3>");
				out.print("<h3><a href='index.jsp'>로그인화면으로 가기</a></h3>");
			}
		} else{
			out.print("<h3>이미 가입된아이디입니다. 다시작성해주세요.</h3>");
			out.print("<h3><a href='register_form.jsp'>회원가입 다시하기</a></h3>");
		}
		
	%>
</body>
</html>