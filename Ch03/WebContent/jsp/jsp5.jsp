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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		String[] hobby = request.getParameterValues("hobby");
		String[] religion = request.getParameterValues("religion");
		String introduction = request.getParameter("introduction");
		
		response.setContentType("text/html;charset=utf-8");
	%>
	아 이 디 : <%=id %><p>
	비밀번호 : <%=pw %><p>
	취&nbsp;&nbsp;&nbsp;&nbsp;미:
	<%
		for(int i=0; i<hobby.length; i++){
			if(i<hobby.length-1) {
				out.print(hobby[i]+",");
			} else {
				out.print(hobby[i]);
			}
		}
	%><p>
	종&nbsp;&nbsp;&nbsp;&nbsp;교:
	<%
	for(int i=0; i<religion.length; i++){
		if(i<religion.length-1) {
			out.print(religion[i]+",");
		} else {
			out.print(religion[i]);
		}
	}
	
	%><p>
	자기소개: <%=introduction %>
</body>
</html>