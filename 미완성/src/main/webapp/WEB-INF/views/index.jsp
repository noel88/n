<%@page import="org.pro.domain.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import=" org.pro.*" %>
<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name = "viewport" content = "width = divice-width,initial-scale = 1, minimum-scale = 1,
	maximum-scale = 2, user-scalable=no">

<title>Main Page</title>


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

<c:choose>
	<c:when test = "${sessionScope.id == null}">
      <li class="nav-item">
        <a class="nav-link" href="/user/joinForm">회원가입</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/user/loginForm">로그인</a>
      </li>
      </c:when>
      <c:otherwise>
       <li class="nav-item">
        <a class="nav-link" href="/board/boardCreateForm">호스팅하기</a>
      </li>
   <li class="nav-item">
        <a class="nav-link" href="/user/logout">로그아웃</a>
      </li>
      </c:otherwise>
</c:choose>

    </ul>


  </div>
</nav>

<!-- <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style = "width : 100%;" >
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner" style = "max-height: 850px; !important;">

    <div class="carousel-item active" >

      <img class="d-block w-100" src="./img/bedroom.jpg" alt="First slide">

    </div>

    <div class="carousel-item">

      <img class="d-block w-100" src="./img/bedroom2.jpg" alt="second slide">

    </div>
    <div class="carousel-item">

      <img class="d-block w-100" src="./img/bedroom3.jpg" alt="Third slide">

    </div>


  </div>

  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

 -->





<div class="jumbotron" style="text-align: center;">
  <h1 class="display-3">환영합니다!</h1>

  <hr class="my-4">
  <p>숙소를 더보시려면 이곳을 눌러주세요</p>
  <p class="lead">
    <a class="btn btn-primary btn-lg" href="board/boardList" role="button">더 알아보기</a>
  </p>
</div>










<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://googledrive.com/host/0B-QKv6rUoIcGREtrRTljTlQ3OTg"></script><!-- ie10-viewport-bug-workaround.js -->
<script src="http://googledrive.com/host/0B-QKv6rUoIcGeHd6VV9JczlHUjg"></script><!-- holder.js -->


</body>
</html>