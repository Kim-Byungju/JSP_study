<!-- 
	c:if
		. 자바의 if문과 같다.
		. 복잡한 ele-if문을 표현할수 없다.
		. (c:if test="조건")
			~~~~~~~~~~~~~
			~~~~~~~~~~~~~
			(/C:if)
			. 조건식에는 표현식, 표현언어를 표현할 수 있다.

 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="">
		이름 : <input type="text" name="name"><br>
		나이 : <input type="text" name="age"><br>
		<input type="submit" value="전송">
	</form>
	<hr>
	<c:if test="true">
		여기는 무조건 실행됩니다.<br>
	</c:if>
	<c:if test="${param.name=='홍길동' }">
		파라미터 name의 값이 ${param.name }입니다.<br>
	</c:if>
	<c:if test="${param.age>20 }">
		파라미터 age의 값이 20입니다.<br>
	</c:if>
</body>
</html>