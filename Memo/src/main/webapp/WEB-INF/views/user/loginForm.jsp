<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
<link rel="stylesheet" href="https://bootswatch.com/4/slate/bootstrap.min.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>
</head>
<body>
<div style="max-width: 1000px; margin-right: auto; margin-left: auto; margin-top: 30px;">

<table class = "table">
<form action="loginAction">
<tr>
	<td colspan="2">아이디 : <input type = "text" name = "loginID"></td>
</tr>
<tr>
	<td colspan="2">패스워드 :<input type = "text" name = "loginPW"></td>
</tr>
<tr>
	<td><input type = "submit" value = "로그인"></td>
</form>
	<td><a href = "signUp"><button>회원가입</button></a></td>
</tr>
</table>
</div>

</body>
</html>