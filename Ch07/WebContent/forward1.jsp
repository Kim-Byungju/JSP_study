<!-- 
	enctype 
		- 폼데이터가 서버로 제출될때 해당데이터가 인코딩되는 방법을 명시한다.
		- 이방식은 Post방식만 유효하다.
		- 종류 	
			.application/x-www-form-urlencoded
			 - 모든문자들은 서버로보내기전에 인코딩됨을 명시ㅏ
			 - 기본값
			.multipart/form-data
			 - 모든문자를 인코딩하지않음 명시
			 - 파일이나이미지 없로드시 서버로전송할떄 사용
			 
			 .text/plain
			  -Rich text : 그림이나 서식이없는 text를 말한다.
			  -plain text : 모든정보가 text로만 이루어진 파일형식을 말하낟. 
			  				공백문자는("+"기호로)
		


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
	<form action="forward1_loginCheck.jsp" method="post" enctype="application/x-www-form-urlencoded">
		<table border="1">
			<tr>
				<td>
					아이디 : <input type="text" name="id"><br>
					비밀번호 : <input type="password" name="pw"><br>
				</td>
			</tr>
			<tr align="center">
				<td>
					<input type="submit" value="로그인">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>