<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>회원가입</h2>
	<form action = "joinAction" method = "post">
	아이디 : <input type = "text" name = "id"> <br>
	비밀번호 : <input type = "text" name = "pwd"> <br>
	이메일 : <input type = "text" name = "email"> <br>
	성별 : 남 <input type = "checkbox" name = "gender" value = "m"> 여 <input type = "checkbox" name = "gender" value = "f"> <br>
	핸드폰번호 : <input type = "text" name = "phone"> <br>
	생년월일(주민번호앞6자리입력) : <input type = "text" name = "birth" maxlength="6"> <br>
	<input type = "submit" value = "회원가입">
	</form>
</body>
</html>