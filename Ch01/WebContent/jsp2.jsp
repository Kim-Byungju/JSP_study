<!-- 
1. JSP개념
	*동적으로 웹컨텐츠를 생성하기위한 "자바기반 스크립트 언어"이다.
	*웹페이지를 작성하기 위한 기술 J2EE플랫폼에 속하는 자바기술이다.
	
	1) 스트립트란?
		웹 표준 HTML에 삽입되어있는 프로그램실행내역을 기술할수 있는 언어를 말한다.
		
	*웹문서에 삽입되어 "스크립트방식으로 프로그래밍"을 작성할 수 있다.
	*자바에 기반하므로 "자바언어 특성을 그대로 활용하여 다양한 API를 자유롭게 활용 할수있다.
	*자바언어 외에
		 - 표현언어(Expression Language, EL)
		 - 자바 표준태그 라이브러리(JSTL)
		 - 액션태그
		 등을 활용하여 더 효과적인 프로그램을 작성할 수있다.
	*오픈소스이고 Spring과 같은 자바언어에 기반을둔 프레임워크가 존재한다.
	
2. JSP가 동적컨텐츠를 생성하기위한 기법들
	*스크립틀릿(%~~~~%) 를 활용하여 자바코드를 사용할수 있다.
 	*액션태그 (jsp:~~~)를 활용해서
 		- 자바빈(javaBean : 사용자가 정의한 자바클래스) 속성을 읽고 쓸수 있고 흐름을 제어 할 수있다.
 	
 	* 기본태그종류 				기본태그포맷
 		지시자(directive)		(%@page ~~ %)        ( => < 꺽쇠 쓰면 주석 뚫고 나옴.. 
 							(%@include ~~ %)
 							(%@tablib ~~ %)
 							
 		선언자(declaration)   (%! ~~ %)
 		스크립틀릿(scriptlet)  (% ~~~ %)
 		표현자(expression)	 (%= ~~ %)
 		
 		EL(표현언어)
 		JSTL(표준태그라이브러리)
 		
 3. JSP가 제공하는 기술
 	*템플릿 데이터 : 텍스트 또는 XML, HMTL태그로 구성된 컨텐츠를 말한다.
 	*동적데이터 : 상황에 따라 내용이바뀔수 있는 컨텐츠 데이터를 스크립트 같은 프로그래밍적 요소로 추가 할수있다.
 		-scriptlet(스크립트릿)에 자바코드를 넣어서 구현한다.
 		(%  %)

 -->
 
<!-- 1.지시어 부분 : HTML 문서의 종류, 사용할 문자셋 , import, error페이지 설정 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 2.HTML부분 -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int num[] = {1,2,3,4,5,6,7,8,9,10};
		String[] season = new String[]{"봄", "여름", "가을", "겨울"};
		String[] fruit = new String[3];
		fruit[0] = "사과";
		fruit[1] = "배";
		fruit[2] = "포도";
		
		out.print("<h1>좋아하는 숫자는 : "+num[7]+"<h1>");
		out.print("<h1>좋아하는 계절은 : "+season[1]+"<h1>");
		out.print("<h1>좋아하는 과일은 : "+fruit[2]+"<h1>");
		
		out.print("배열season의 길이는 : "+season.length+"<h1>");
		
		
	%>
	<h3 style="color:red"><%= fruit[2]%></h3>  <!-- 출력 -->
</body>
</html>