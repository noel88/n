<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시물 목록</title>

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






<table class = "table table-hover" style="margin-left: auto; margin-right: auto; width: 850px;">
  <thead>
    <tr>
      <th colspan="4">
      	<h3>원하는 숙소 찾기 </h3>

      </th>
    </tr>
  </thead>
  <tbody>

	<tr>
		<th scope = "col">코드</th>
		<th scope = "col">제목</th>
		<th scope = "col">위치</th>
		<th scope = "col">조회수</th>
	</tr>


<c:forEach items = "${boardlist}" var = "BoardVo">
	<tr>
		<td scope = "row">${BoardVo.code}</td>
		<td scope = "row"><a href = "/board/boardDetails?code=${BoardVo.code}">${BoardVo.title}</a></td><!-- 제목 -->
		<td scope = "row">${BoardVo.local}</td><!-- 위치 -->
		<td scope = "row">${BoardVo.count}</td><!-- 조회수 -->

	</tr>

</c:forEach>


	<tr>
		<td colspan="4"><a href="boardCreateForm"><button type = "button" class = "btn btn-primary">숙소 등록</button></a></td>
	</tr>

</tbody>
</table>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://googledrive.com/host/0B-QKv6rUoIcGREtrRTljTlQ3OTg"></script><!-- ie10-viewport-bug-workaround.js -->
<script src="http://googledrive.com/host/0B-QKv6rUoIcGeHd6VV9JczlHUjg"></script><!-- holder.js -->




</body>
</html>