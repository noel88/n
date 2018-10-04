<%@ page language="java" contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<%@ include file="/WEB-INF/views/include/head.jsp"%>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="/lxa"><i class="fas fa-draw-polygon">&nbsp;BLOG</i></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarColor02">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/lxa">Home<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About</a>
      </li>
<c:choose>
	<c:when test = "${sessionScope.name == null}">
      <li class="nav-item">
        <a class="nav-link" href="/lxa/user/join">Start</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/lxa/user/login">Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/lxa/blog/list">List</a>
      </li>
 </c:when>
      <c:otherwise>
      <li class="nav-item">
        <a class="nav-link" href="/lxa/blog/list">List</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/lxa/blog/write">Write</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="/lxa/user/page">${sessionScope.name}, page</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/lxa/user/logout">Logout</a>
      </li>

         </c:otherwise>
</c:choose>
    </ul>

  </div>
</nav>


<div class="jumbotron">
  <h1 class="display-3" style="text-align: left;">Comming Soon</h1>
  <p class="lead">Homepage is being renewed.</p>
  <hr class="my-4">
  <p>~18.10.15</p>
  <p class="lead">
  </p>
</div>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>

</body>
</html>