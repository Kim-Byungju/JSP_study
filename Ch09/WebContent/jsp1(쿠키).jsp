<!-- 
	쿠키(cookie) : 웹브라우저에 저장되는 작은 크기의 데이터(클라이언트에 저장)
	
	* 용도 
		- 서버와 클라이언트가 통신할때 하나의 요청에 대한 응답을 전송하고 나면 서로의 통신은 단절되어 정보를 지속적으로 공유할수 없게 된다. 이런특성을 stateless라고한다.
		- 하나의 클라이언트가 여러번 반복적으로 서버에 접속하더라도 서버에서는 이전클라이언트와 동일한 클라이언트가 접속한 것인지 확인할수가없다.
	
	* 지속성의 유지를 위해 쿠키/ 세션을 사용
		1)쿠키생성 : 웹서버와 브라우저 양쪽 생성할 수 있다.
			- 요청(request) 들어오면 쿠키를 생성하고 응답(reponse)에 쿠키를 보낸다.
			- 그다음부터의 요청시마다 쿠키를 확인/공유한다.
		
		2)쿠키저장 : 웹 브라우저 쿠키를 클라이언트 컴퓨터 쿠키저장소에 저장한다.
		
		3)쿠키전송 
			- 클라이언트 : 한번 저장된 쿠키를 매번 요청시 마다 요청헤더에 포함해서 저장한다.
			- 서버 : 전송받은 쿠키를 활용해서 필요한 작업을 지속해 나갈수 있고, 수행후 응답(response)에 쿠키를 헤더에 넣어보낸다.
			
		4) 쿠키구성 : 이름  = 값 , 이름  = 값 , 이름  = 값 ,, 으로 저장 
			- 이름은 문자만 가능하다.
		
		5) 쿠키의 구성내용 : 유효시간, 경로지정, 도메인 지정
		
		6) 구현
			- 생성 : new Cookie(이름, 값)와 같이 생성자를 활용 생성
				. response.addCookie(쿠키) 클라이언트에 전송
				. request.getCookies() 다음 요청시 쿠키를 읽는다.
			- 변경 : 같은 이름에 다른값을 넣어서 생성하면 된다.
			- 삭제 : 유효시간을 0으로 설정하면 ,, 서버는 유효시간이 지난 쿠키는 자동 삭제처리한다. setMaxAge(0)
		
		7) 활용
			- 유효시간이 종료되지않은 상태라면.. 다른 페이지에서 공유 할수 있다.
			- 로그린, 장바구니, 하루만 보여주기 창 등에 활용된다.
		
		8) 쿠키 메소드
			- getName() : 쿠키이름 읽기
			- getValue() : 쿠키값 읽기
			- setValue(String value)
			- setPath(String uri) - 쿠키전송경로 결정
			- setMaxAge(int time) - 유효시간 설정, 기본값은 -1, 단위는 초단위
			- getCookies() - 쿠키를 읽어오기, 배열값으로 온다.
		
		9) JSESSIONID?
			- 톰캣 컨테이너에서 세션을 유지하기위해 자동 발급되는키
			- 세션의 정장소를 생성할때 사용하는 키, 이후 해당 저장소에 다시접근할 떄 사용
			- 동작순서
				* 최초접속시 톰캣은 헤더에 JSESSION ID를 발급한다.
				* 발급한 JESSION ID는 쿠키에 저장된다.
				* 만약 다시발급하면 , 톰캣은 저장된 JESSION을 ,request헤더에 담아  서버로온다.
				* 서버는 JESSION ID를 토대로 세션메모리 영역에 상태를 유지할 수 있는 값을 저장한다.
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
	<%
		Cookie cookie_name =  new Cookie("name", "홍길동");
		Cookie cookie_age =  new Cookie("age", "30");
		
		response.addCookie(cookie_name);
		response.addCookie(cookie_age);
	%>
	<%=cookie_name.getName()+":"+cookie_name.getValue() %><br>
	<%=cookie_age.getName()+":"+cookie_age.getValue() %>
</body>
</html>