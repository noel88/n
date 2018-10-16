<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/include/head.jsp" %>

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

<%@ include file="/WEB-INF/views/include/nav.jsp" %>

<div style="max-width: 1000px; margin-right: auto; margin-left: auto; margin-top: 150px;">
<h1 style="margin-top: 30px;"> ADMIN </h1>
<div style=" margin-left : auto; margin-right : auto;">
	<ul class="nav nav-tabs">
		<li class="nav-item">
		<a class="nav-link active show" data-toggle="tab" href="#event">EVENT</a>
		</li>
		<li class="nav-item">
		<a class="nav-link" data-toggle="tab" href="#list">LIST</a>
		</li>
		<li class="nav-item">
		<a class="nav-link" data-toggle="tab" href="#users">USERS</a>
		</li>
		<li class="nav-item">
		<a class="nav-link" data-toggle="tab" href="#report">REPORT</a>
		</li>
	</ul>

	<div id="myTabContent" class="tab-content">
		<!-- 이벤트 등록 -->
		<div class="tab-pane fade active show" id="event">
			<%@ include file="/WEB-INF/views/event/event_write.jsp" %>
		</div>
		<!-- 전체 게시글 목록 확인 -->
		<div class="tab-pane fade show" id="list">
			게시글 목록 확인
		</div>
		<!-- 회원정보 보기 -->
		<div class="tab-pane fade show" id="users">
			회원정보 확인
		</div>
		<!-- 신고 글 및 댓글 보기 -->
		<div class="tab-pane fade show" id="report">
			신고된 글 및 댓글 보기
		</div>
	</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>