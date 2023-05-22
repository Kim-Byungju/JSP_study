<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 코드가 자동으로 처리되므로 errorpage를 설정하지 않아도 된다. -->
	<%
		Enumeration e = application.getInitParameterNames();
		// getInit parameterNames()
		//	-web.xml에 설정해놓은 파라미터의 name을 읽어온다.
		if(e.hasMoreElements()==true){
			while(e.hasMoreElements()){
				String name = (String)e.nextElement();
				out.print(application.getInitParameter(name));
				out.print("<br>");
			}
		}
		if(e.hasMoreElements()==false){
			out.print("web.xml에 설정해놓은 초기파라미터가 존재하지 않습니다.");
		}
	%>
	
</body>
</html>