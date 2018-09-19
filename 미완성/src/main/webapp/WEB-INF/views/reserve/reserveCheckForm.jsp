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


<form action="reserve" name = "reserve">


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
		<td><input type = "number" class = "form-control"  rows = "3" name = "code" value = "${reserveVo.code}"></td>
	</tr>
	<tr>
		<td>예약자이름</td>
		<td><input type = "text" class = "form-control"  rows = "3" name = "name"></td>
	</tr>
	<tr>
		<td>숙박인원</td>
		<td><div class="form-group">
	     	 		<select class="form-control" name="peopleNum" >
		        		<option value=1>1명</option>
		        		<option value=1>2명</option>
		        		<option value=1>3명</option>
		        		<option value=1>4명</option>
		        		<option value=1>5명</option>
		        		<option value=1>6명</option>
		        		<option value=1>7명</option>
		        		<option value=1>8명</option>
		        		<option value=1>9명</option>
		        		<option value=1>10명</option>
		        		<option value=1>11명</option>
		        		<option value=1>12명</option>
		        		<option value=1>13명이상</option>


	     	 		</select>
		</div></td>
	</tr>

	<tr>
		<td>체크인</td>
		<td><input type = "date" class = "form-control"  rows = "3" name = "checkInDate"></td>
	</tr>
	<tr>
		<td>숙박일수</td>
		<td><div class="form-group">
	     	 		<select class="form-control" name = "days" >
		        		<option value=1>1박2일</option>
		        		<option value=2>2박3일</option>
		        		<option value=3>3박4일</option>
		        		<option value=4>4박5일</option>
		        		<option value=5>5박6일</option>
		        		<option value=6>6박7일</option>
		        		<option value=7>7박이상</option>

	     	 		</select>
	     	 		</div></td>
	</tr>

	<tr>
		<td>가격(1박기준)</td>
		<td><input type = "number" class = "form-control"  rows = "3" name = "r_price" value = "${reserveVo.r_price}"></td>
	</tr>

	<tr>
		<td colspan="2">
			<button type = "submit" class = "btn btn-primary">등록하기</button>
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