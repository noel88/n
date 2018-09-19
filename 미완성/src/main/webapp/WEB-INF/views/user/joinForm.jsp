
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name = "viewport" content = "width = divice-width,initial-scale = 1, minimum-scale = 1,
	maximum-scale = 2, user-scalable=no">

<title>회원가입</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">





</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/">HomePage</a>

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

   <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="text" placeholder="Search" style="width: 500px; height: 28px">
      <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
    </form>
  <div class="collapse navbar-collapse" id="navbarColor03">


    <ul class="navbar-nav mr-auto" style = "float: right;">
       <li class="nav-item active">
        <a class="nav-link" href="#">도움말</a>

      </li>

      <li class="nav-item">
        <a class="nav-link" href="/user/joinForm">회원가입</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/user/loginForm">로그인</a>
      </li>
    </ul>


  </div>
</nav>



<form action="join"  method = "post" style="margin: 20px;">
  <fieldset>
    <legend>회원가입</legend>
      <div class="form-group">
      <label for="exampleInputId1">아이디</label>
      <input type="text" class="form-control" id="exampleInputId1" aria-describedby="IDHelp"  placeholder="ID입력" name = "id">
      <small id="emailHelp" class="form-text text-muted">아이디는 영문숫자 10자이내로 입력해주세요</small>
    </div>
    <div class="form-group">
      <label for="exampleInputPassword1">패스워드</label>
      <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password입력" name ="password">
    </div>
    <div class="form-group">
      <label for="exampleInputName">이름</label>
      <input type="text" class="form-control" id="exampleInputName" placeholder="이름입력" name ="name">
    </div>
    <div class="form-group">
      <label for="exampleSelect1">성별</label>
      <select class="form-control" name = "gender">
        <option value ="M">남자</option>
        <option value = "F">여자</option>
        <option value = "etc">기타</option>
      </select>
    </div>
      <div class="form-group">
      <label for="exampleInputEmail1">이메일</label>
      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name = "email">
    </div>


	<br>
    <button type="submit" class="btn btn-primary">회원가입</button>
  </fieldset>
</form>



<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://googledrive.com/host/0B-QKv6rUoIcGREtrRTljTlQ3OTg"></script><!-- ie10-viewport-bug-workaround.js -->
<script src="http://googledrive.com/host/0B-QKv6rUoIcGeHd6VV9JczlHUjg"></script><!-- holder.js -->





</body>
</html>