<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>

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
<%@ include file="/WEB-INF/views/include/head.jsp"%>
</head>
<body>

<%@ include file="/WEB-INF/views/include/nav.jsp"%>



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
					  <a href = "/lxa/blog/detail?no=${BlogVO.no}">${BlogVO.title}</a>
					</h3>
				</td>
				<td style="float: right;">

					  <small class="text-muted"><i class="fas fa-eye">&nbsp;${BlogVO.cnt}</i> </small>

				</td>

			</tr>
			<tr>
				<td colspan="2" style="width: 750px; text-align: left;">
					<p><c:out value='${fn:substring(BlogVO.context.replaceAll("\\\<.*?\\\>",""),0, 150)}' />.. <small class="text-muted"> <i class="fas fa-angle-down"></i> </small></p>
					   <small class="text-muted">${BlogVO.now} <cite title="Source Title">by.${BlogVO.name}</cite></small>
					   				<span style="float: right;">&nbsp;&nbsp;&nbsp;<i class="fas fa-comment-dots">&nbsp;${BlogVO.comment_Cnt}</i>&nbsp;
									<i class="fas fa-heart" >&nbsp;${BlogVO.like_count}</i></span>
			 	</td>
			</tr>

   </table>
		</c:forEach>
</div>
<br>
  <div id="js-btn-wrap" class="btn-wrap"> <a href="javascript:;" class="button">more</a> </div>
</div>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>