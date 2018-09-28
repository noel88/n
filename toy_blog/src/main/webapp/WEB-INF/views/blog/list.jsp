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
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link href="<c:url value="/resources/css//bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css//bootstrap.min.css" />" rel="stylesheet">
<style type="text/css">

#contents {
	max-width: 780px;
	margin: 0 auto;
	text-align: center;
	padding-bottom: 50px;
}

.ad {
	text-align: center;
	border: 1px dotted #ccc;
	max-width: 780px;
	margin: 0 auto 6rem;
}

a.btn {
	background: #59b1eb;
	color: #fff;
	border: none;
	position: relative;
	height: 60px;
	font-size: 108%;
	padding: .6em 1em;
	transition: 800ms ease all;
	outline: none;
}

a.btn:before, a.btn::after {
	content: '';
	position: absolute;
	top: 0;
	right: 0;
	height: 2px;
	width: 0;
	background: #131414;
	transition: 400ms ease all;
}
a.btn::after {
	right: inherit;
	top: inherit;
	left: 0;
	bottom: 0;
}
a.btn:hover:before, a.btn:hover::after {
	width: 100%;
	transition: 800ms ease all;
}


.js-load {
	display: none;
}
.js-load.active {
	display: block;
}
.is_comp.js-load:after {
	display: none;
}
.btn-wrap, .lists, .main {
	display: block;
}
.main {
	max-width: 640px;
	margin: 0 auto;
}
.lists {
 	margin-bottom: 4rem;
}
.lists__item {
	padding: 20px;
/* 	background: #EEE; */
}
.lists__item:nth-child(2n) {
/* 	background: #59b1eb; */
/* 	color: #fff; */
}
.btn-wrap {
	text-align: center;
}
.button {
	display: inline-block;
	width: 200px;
	height: 54px;
	text-align: center;
	text-decoration: none;
	line-height: 54px;
	outline: none;
	position: relative;
	z-index: 2;
 	background-color: #333;
	border: 2px solid #333;
 	color: #fff;
	line-height: 50px;
	margin-bottom: 4rem;
}
.button:hover {
	background-color: #fff;
	border-color: #131414;
	color: #131414;
}
.button::before,
.button::after {
	position: absolute;
	z-index: -1;
	display: block;
	content: '';top: 0;
	width: 50%;
	height: 100%;
	background-color: #333;
}
.button,
.button::before,
.button::after {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-transition: all .3s;
	transition: all .3s;
}

.button::before {
	right: 0;
}
.button::after {
	left: 0;
}
.button:hover::before,
.button:hover::after {
	width: 0;
	background-color: #131414;
}

</style>
<script type="text/javascript" src="https://nanati.me/common/js/jquery-1.11.2.min.js"></script>


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

<script type="text/javascript">
$(window).on('load', function () {
	load('#js-load', '5');
	$("#js-btn-wrap .button").on("click", function () {
		load('#js-load', '5', '#js-btn-wrap');
	})
});

function load(id, cnt, btn) {
	var girls_list = id + " .js-load:not(.active)";
	var girls_length = $(girls_list).length;
	var girls_total_cnt;
	if (cnt < girls_length) {
		girls_total_cnt = cnt;
	} else {
		girls_total_cnt = girls_length;
		$('.button').hide()
	}
	$(girls_list + ":lt(" + girls_total_cnt + ")").addClass("active");
}
</script>



<div id="contents">
  <div id="js-load" class="lists">

<!-- alter table blog modify column now timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP; -->

<c:forEach items = "${list}" var = "BlogVO">
   <table class="lists__item js-load table" style = "margin-left : auto; margin-right : auto; margin-top : 30px;">
			<tr>
				<td style="text-align: left;">
					<h3>
					  <a href = "/blog/detail?no=${BlogVO.no}">${BlogVO.title}</a>
					</h3>
				</td>
				<td style="width: 25px;">
					  <small class="text-muted">${BlogVO.cnt} </small>

				</td>
				<td rowspan="2">

				</td>
				<td rowspan="2" style="width: 150px;">
					<img src="/resources/img/books-1245690_640.jpg" width="150px;" height="150px;">
				</td>
			</tr>
			<tr>
				<td colspan="2" style="width: 600px; text-align: left;">
					<p><c:out value='${fn:substring(BlogVO.context.replaceAll("\\\<.*?\\\>",""),0, 200)}' />.. <small class="text-muted"> <i class="fas fa-angle-down"></i> </small></p>
					   <small class="text-muted">${BlogVO.now} <cite title="Source Title">by.${BlogVO.name}</cite></small>
			 	</td>
			</tr>

   </table>
		</c:forEach>
</div>
<br>
  <div id="js-btn-wrap" class="btn-wrap"> <a href="javascript:;" class="button">more</a> </div>
</div>


</body>
</html>