<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Form과 요청 파라미터를 처리하는 방법 중 getParameterValues()</h3>
	<form action="jsp3_2.jsp" method="post">
		이 름 : <input type="text" name="name"><br>
		전화번호 : <input type="text" name="phone"><br>
		성별 : 
			<input type="radio" name="gender" value="남자">남자&nbsp;<br>
			<input type="radio" name="gender" value="여자">여자&nbsp;<br>
		좋아하는 운동: 
			<input type="checkbox" name="sports" value="야구">야구
			<input type="checkbox" name="sports" value="축구">축구
			<input type="checkbox" name="sports" value="농구">농구
			<input type="checkbox" name="sports" value="배구">배구
		가장좋아하는 계절 :
			<select name="season">
				<option value="봄">봄</option>
				<option value="여름">여름</option>
				<option value="가을">가을</option>
				<option value="겨울">겨울</option>
			</select><br><br>
			<input type="submit" value="확인">&nbsp;
			<input type="reset" value="취소">
	</form>
</body>
</html>