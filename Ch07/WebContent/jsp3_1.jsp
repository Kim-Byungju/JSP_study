<!-- 
	Action tag(액션태그)
	
		- jsp 페이지에서 특별한 기능을 정의해 놓은 xml형태의 태그
		- 종류 
		  기본 태그								   액션 태그
		----------------------------------------------------		  
		(%@ ~~~~ %)                      (jsp : directive)
		(%! ~~~~ %)                      (jsp : declaration)
		(%= ~~~~ %)                      (jsp : expression)
		
		(%@ include)
		pageContext.include()			 (jsp: include page="")
											(jsp:param name="" value="" /)
											(/jsp:include)
											
		pageContextforward("")			 (jsp : forward page="")
											(jsp:param name="" value="" /)
											(/jsp:include)
										 (/jsp:forward)
										 
										 	* A >>> B
										 	  - A페이지에는 buffer="none"을 설정하지 않는다.
										 	  - A페이지에서 (jsp:forward)을 만나기전에 버퍼가 차면안된다.
										 	  - A페이지에서는 B페이지로 이동할 준비작업만 처리한다.
										 	  
										 	  >> (jsp:forward)를 만나면 그떄 까지 출력버퍼에 저장된 내용을
										 	  	모두 지워버리고 이동하기 떄문
		- web.xml을 이용한 코드포함
		
			(JSP-config)
				
					(jsp-property-group)
						(url-pattern)/폴더명/*(/url-patern)
						(include-prelude)/포함폴더/포함할페이지.jsp (/include-prelude)
						(include-coda)/포함폴더/포함할페이지.jsp (/include-coda)
					(jsp-property-group)
					
					(jsp-property-group)
						(url-pattern)/폴더명/*(/url-patern)
						(include-prelude)/포함폴더/포함할페이지.jsp (/include-prelude)
						(include-coda)/포함폴더/포함할페이지.jsp (/include-coda)
					(jsp-property-group)
					
					(jsp-property-group)
						(url-pattern)/폴더명/*(/url-patern)
						(include-prelude)/포함폴더/포함할페이지.jsp (/include-prelude)
						(include-coda)/포함폴더/포함할페이지.jsp (/include-coda)
					(jsp-property-group)
			
			(jsp-config)
			
			
***()괄호는 >>>  <>꺾쇠이다. (<쓰면 주석뚫고나와서....)

 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %> 파라미터로 넘기는 값은 인코딩 설정해줘야한다.
	<h3>첫번쨰 페이지</h3> 
	<hr>
		<jsp:include page="jsp3_2.jsp">
			<jsp:param value="홍길동" name="name"/> 
			<jsp:param value="고길동" name="name"/> 
			<jsp:param value="010-1234-5678" name="phone"/>
		</jsp:include>
	<hr>
</body>
</html>