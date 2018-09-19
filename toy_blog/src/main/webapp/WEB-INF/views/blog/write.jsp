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
        <a class="nav-link" href="#">List</a>
      </li>
 </c:when>
      <c:otherwise>  
      <li class="nav-item">
        <a class="nav-link" href="#">List</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/blog/write">Write</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="#">${sessionScope.name}, page</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/user/logout">Logout</a>
      </li>
  
         </c:otherwise>
</c:choose>
    </ul>
   
  </div>
</nav>




   <table style = "margin-left : auto; margin-right : auto; margin-top : 30px; width: 550px;">
<tr>
	<td><div class="form-group">
      <label for="exampleTextarea">write</label>
	<hr>
	<br>
      <textarea class="editable" rows="70"></textarea>
    </div>
	</td>

</tr>
    <tr>
    	   	<td><button type="submit" style = "margin-left: auto; margin-right: auto;" class="btn btn-primary">Write</button></td>
    </tr>


   </table>


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
</body>
</html>