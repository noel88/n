<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 안에 내용</title>
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


<table class = "table table-hover" style="margin-left: auto; margin-right: auto; width: 850px; text-align: center;">
  <thead>
    <tr>
      <td colspan="4">
      	<h3>${boardVo.title} </h3>

      </td>
    </tr>
  </thead>
  <tbody>

	<tr>
		<td scope="row" colspan="4">
			<h5><p>${boardVo.local}</p></h5>
		</td>
	</tr>




	<tr>
		<td scope="row" colspan="4">
			<p>${boardVo.text }</p>
		</td>
	</tr>

	<tr>
		<td scope="row" colspan="4">
<c:choose>
	<c:when test = "${sessionScope.id == null}">

      	 <a href= "boardList" class="btn btn-primary">목록으로</a>
      	   </c:when>
      <c:otherwise>
      	 <a href= "boardList" class="btn btn-primary">목록으로</a>
      	 <a href= "boardDelete?code=${boardVo.code}" class="btn btn-primary">삭제하기</a>
      	 <a href= "boardUpdate?code=${boardVo.code}" class="btn btn-primary">수정하기</a>
      	 <a href="reserve/reserveCheckForm?code=${boardVo.code}&price=${boardVo.price}" class="btn btn-primary">예약하기</a>
      </c:otherwise>
</c:choose>
      </td>
    </tr>




</tbody>
</table>

<%-- <table class = "table table-hover" style="margin-left: auto; margin-right: auto; width: 850px; text-align: left;">
  <thead>
    <tr>
      <td colspan="4">
      	<h4>후기댓글</h4>

      </td>
    </tr>
  </thead>
  <tbody>

	<tr>
		<td scope="row" colspan="4">
			<div class="form-group">
    		<input type="text" placeholder="댓글을 입력해주세요">
      <button class="btn btn-secondary my-2 my-sm-0" type="submit">등록</button>
    </div>
		</td>
	</tr>
	<c:forEach items = "${reply}" var = "ReplyVo">
	<tr>
		<td scope="row" colspan="4">
			<div class="form-group">
      <label>${ReplyVo.id}</label> <!-- 댓글 작성자  -->
    	 ${ReplyVo.replyText}
    </div>
		</td>
	</tr>


	</c:forEach>
 --%>






<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://googledrive.com/host/0B-QKv6rUoIcGREtrRTljTlQ3OTg"></script><!-- ie10-viewport-bug-workaround.js -->
<script src="http://googledrive.com/host/0B-QKv6rUoIcGeHd6VV9JczlHUjg"></script><!-- holder.js -->



</body>
</html>