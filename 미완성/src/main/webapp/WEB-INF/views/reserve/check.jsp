<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="org.pro.domain.BoardVo"%>
<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>숙소 예약하기</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">



</head>


<body>


<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="index.jsp">HomePage</a>

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


<form name = "reserve">


<table class = "table table-hover" style="margin-left: auto; margin-right: auto; width : 850px;">
  <thead>
    <tr>
      <th scope="col" colspan="2">
      	<h3>숙소예약하기</h3>
      </th>
    </tr>
  </thead>
  <tbody>


	<tr>
		<td>숙소코드</td>
		<td>${reserveVo.code}</td>
	</tr>
	<tr>
		<td>예약자이름</td>
		<td>${reserveVo.name}</td>
	</tr>
	<tr>
		<td>숙박인원</td>
		<td>${reserveVo.peopleNum}</td>
	</tr>

	<tr>
		<td>체크인</td>
		<td>${reserveVo.checkInDate}</td>
	</tr>
	<tr>
		<td>숙박일수</td>
		<td>${reserveVo.days}</td>
	</tr>

	<tr>
		<td>총 가격</td>
		<td>${reserveVo.r_price * reserveVo.days}</td>
	</tr>

	<tr>
		<td colspan="2">
			<a href = "/" ><button type = "button" class = "btn btn-primary">메인화면</button></a>
		</td>
	</tr>

</tbody>
</table>
</form>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://googledrive.com/host/0B-QKv6rUoIcGREtrRTljTlQ3OTg"></script><!-- ie10-viewport-bug-workaround.js -->
<script src="http://googledrive.com/host/0B-QKv6rUoIcGeHd6VV9JczlHUjg"></script><!-- holder.js -->




</body>
</html>