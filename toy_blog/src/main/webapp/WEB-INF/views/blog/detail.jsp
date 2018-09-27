<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
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




   <table class="table" style = "margin-left : auto; margin-right : auto; margin-top : 30px; width: 80%;">
			<tr class="table-secondary">
				<td style="width: 70%; text-align: left;">
					<h3>
					 ${blogVO.title}
					  <small class="text-muted">${blogVO.name}</small>
					</h3>
				</td>

				<td>
					  <small class="text-muted">${blogVO.now} </small>

				<!-- alter table blog modify column now timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP; -->

				</td>
				<td style="width:5%;">
				
				</td>
				<td>
					  <small class="text-muted">${blogVO.cnt} </small>

				</td>

			</tr>
			<tr>
			<td colspan="4">${blogVO.context}</td>
			</tr>
		
			<tr>
				<td scope="row" colspan="4">
				<c:choose>
					<c:when test = "${sessionScope.name == null}">
				
				      	 <a href= "list" class="btn btn-primary">list</a>
				      	   </c:when>
				      <c:otherwise>
				      	 <a href= "list" class="btn btn-primary">list</a>
				      	 <a href= "delete?no=${BlogVO.no}" class="btn btn-primary">delete</a>
				      	 <a href= "update?no=${BlogVO.no}" class="btn btn-primary">update</a>
				 
				      </c:otherwise>
				</c:choose>
				 </td>
		    </tr>

   </table>



</body>
</html>