<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <link href="<c:url value="/resources/css/demo.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/medium-editor.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/default.css" />" rel="stylesheet"id="medium-editor-theme">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.css">
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


<form action= "update" method="get">

   <table style = "margin-left : auto; margin-right : auto; margin-top : 30px; width: 50%;">




   	<tr>
   		<td><div class="form-group">
      <label for="exampleInputname1">Title</label>
      <input type="text" class="form-control" name = "title" id="exampleInputPassword1" placeholder="Title" value="${blogVO.title}">
   	  <input type="hidden" class="form-control" name = "no" value="${blogVO.no}">

    </div></td>
   	</tr>
  	<tr>

   	<tr>
   		<td><div class="form-group">
      <label for="exampleInputname1">Name</label>
      <input type="text" class="form-control" name = "name" id="exampleInputPassword1" value = "${sessionScope.name}" readonly="readonly" >

    </div></td>
   	</tr>
  	<tr>




<tr>
	<td><div class="form-group">
      <label for="exampleTextarea">Update</label>
	<hr>
	<br>
      <textarea class="editable" rows="70" name = "context">${blogVO.context}</textarea>
    </div>
	</td>

</tr>
    <tr>
    	   	<td><button type="submit" style = "margin-left: auto; margin-right: auto;" class="btn btn-primary">Update</button></td>
    </tr>


   </table>

</form>

    <script src="<c:url value="/resources/js/medium-editor.js" />"></script>

    <script>
        var editor = new MediumEditor('.editable', {
            buttonLabels: 'fontawesome'
        }),
        cssLink = document.getElementById('medium-editor-theme');

        document.getElementById('sel-themes').addEventListener('change', function () {
            cssLink.href = '../dist/css/' + this.value + '.css';
        });
    </script>

    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://googledrive.com/host/0B-QKv6rUoIcGREtrRTljTlQ3OTg"></script><!-- ie10-viewport-bug-workaround.js -->
<script src="http://googledrive.com/host/0B-QKv6rUoIcGeHd6VV9JczlHUjg"></script>

</body>
</html>