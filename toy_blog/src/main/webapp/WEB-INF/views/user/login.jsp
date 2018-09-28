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
  <a class="navbar-brand" href="/">한글 테스트</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarColor02">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About</a>
      </li>
<c:choose>
	<c:when test = "${sessionScope.name == null}">
      <li class="nav-item">
        <a class="nav-link" href="/user/join">Start</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/user/login">Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/blog/list">List</a>
      </li>
 </c:when>
      <c:otherwise>
      <li class="nav-item">
        <a class="nav-link" href="/blog/list">List</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/blog/write">Write</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/user/page">${sessionScope.name}, page</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/user/logout">Logout</a>
      </li>

         </c:otherwise>
</c:choose>
    </ul>

  </div>
</nav>


<form action = "loginAction">
<table style = "margin-left : auto; margin-right : auto; margin-top : 30px; width: 50%;">

	<tr>
   		<td><div class="form-group">
      <label for="exampleInputname1">Name</label>
      <input type="text" class="form-control" name = "user_name" id="exampleInputPassword1" placeholder="Name">
      <small id="emailHelp" class="form-text text-muted">Please enter a name for your blog.</small>
    </div></td>

   	</tr>

  	<tr>

  		<td> <div class="form-group">
      <label for="exampleInputPassword1">Password</label>
      <input type="password" class="form-control" name = "user_pwd" id="exampleInputPassword1" placeholder="Password">
    </div></td>

  	</tr>

    <tr>
    	<td><button type="submit" style = "float:left;" class="btn btn-primary">Login</button><button type="button" style = "float:right;" class="btn btn-primary">Forget</button></td>
    </tr>



</table>

</form>
</body>
</html>