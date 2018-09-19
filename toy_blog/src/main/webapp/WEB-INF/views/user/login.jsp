<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <link href="<c:url value="/resources/css//bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css//bootstrap.min.css" />" rel="stylesheet">
</head>
<body>





<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">한글 테스트</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor02">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/user/join">Start</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="/user/login">Login</a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="/blog/write">Write</a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="#">List</a>
      </li>
    </ul>

  </div>
</nav>


<form action = "#">
<table style = "margin-left : auto; margin-right : auto; margin-top : 30px;">

	<tr>
	<td>  <div class="form-group" >
      <label for="exampleInputEmail1">Email address</label>
      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" style="width: 320px; ">
      <small id="emailHelp" class="form-text text-muted">Please enter your email address.</small>
    </div></td>
	</tr>
  	<tr>
  		<td> <div class="form-group">
      <label for="exampleInputPassword1">Password</label>
      <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" style="width: 320px; ">
    </div></td>

  	</tr>

    <tr>
    	<td><button type="submit" style = "float:left;" class="btn btn-primary">Login</button><button type="button" style = "float:right;" class="btn btn-primary">Forget</button></td>
    </tr>



</table>

</form>
</body>
</html>