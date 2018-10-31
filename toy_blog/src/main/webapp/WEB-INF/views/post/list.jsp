<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>

<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Raleway:400,900,700,600,500,300,200,100,800);

section{
    padding:60px 0px;
    font-family: 'Raleway', sans-serif;
}

h2 {
    color: #4C4C4C;
    word-spacing: 5px;
    font-size: 30px;
    font-weight: 700;
    margin-bottom:30px;
    font-family: 'Raleway', sans-serif;
}

.ion-minus{
    padding:0px 10px;
}

.blog{
	background-color:#f6f6f6;
}

.blog .card {
    background-color: #FFF;
    border: 1px solid #eceaea;
    margin: 20px 0px;
}

.blog .card-block {
    padding: 15px;
}

.btn.btn-default {
    background-color: #5db4c0;
    color: #fff;
    border-radius: 0;
    border: none;
    padding: 13px 20px;
    font-size: 13px;
    font-weight: 600;
    margin-top: 10px;
}
</style>



<style type="text/css">

#contents {
	max-width: 1000px;
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

<div style="max-width: 1000px; margin-right: auto; margin-left: auto; margin-top : 100px;">

<div style="margin-left: auto; margin-right: auto; margin-top: 50px; margin-bottom: 100px;">


	<h2><p class="mb-0">Blog Story</p></h2>
	<h2><p class="mb-0">블로그의 다양한 이야기들을 만나보세요.</p></h2>

</div>


 <div class="row">
<ul class="nav nav" style="margin-left: auto; margin-right: auto;">
  <li class="nav-item">
    <a class="nav-link" href="list?keyword=-1"><h2>전체</h2></a>
  </li>
 <c:forEach items="${keywords}" var = "key">
  <li class="nav-item">
    <a class="nav-link" href="list?keyword=${key.word}"><h2>${key.word}</h2></a>
  </li>
 </c:forEach>



</ul>
</div>
<div id="myTabContent" class="tab-content" >
  <div class="tab-pane fade show active" id="">

<div class="blog" style="margin-top: 30px;">
      <div class="container">

           <div class="row">
 <c:forEach items="${key_best}" var = "best">
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" data-aos="fade-right">
					 <div class="card text-center">
                        <a href="blog/user_blog?name=${best.blog_user}"><img class="card-img-top" src="<spring:url value ='/image/${best.profile_img}'/>" alt="" width="100%"></a>
                        <div class="card-block">
                            <h4 class="card-title">${best.blog_title}</h4>
                            <p class="card-text">${best.blog_info}</p>

                        </div>
                     </div>
                </div>
</c:forEach>
             <!--    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" data-aos="fade-up">
					 <div class="card text-center">
                        <img class="card-img-top" src="https://images.pexels.com/photos/129105/pexels-photo-129105.jpeg?h=350&auto=compress&cs=tinysrgb" alt="" width="100%">
                        <div class="card-block">
                            <h4 class="card-title">Post Title</h4>
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.</p>

                        </div>
                     </div>
                </div>

                 <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" data-aos="fade-left">
					 <div class="card text-center">
                        <img class="card-img-top" src="https://images.pexels.com/photos/129441/pexels-photo-129441.jpeg?h=350&auto=compress&cs=tinysrgb" alt="" width="100%">
                        <div class="card-block">
                            <h4 class="card-title">Post Title</h4>
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.</p>

                        </div>
                     </div>
                </div> -->

            </div>

    </div>
</div>





<%--
		<div class="col-sm-12" style = "margin-top: 50px;">
		<div class="page-header text-muted" style="float: right;" >
		<ul class="nav">
		<li><a href="list">· <b><spring:message code="latest"/></b></a></li>
		<li><a href="list_pop">· <spring:message code="popularity"/>&nbsp;</a></li>
		<li><a href="list_cnt">· <spring:message code="cnt"/></a></li>
		</ul>
		</div>
		</div> --%>

<div id="contents">
  <div id="js-load" class="lists">

<!-- alter table blog modify column now timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP; -->

<c:forEach items = "${list}" var = "PostVO">
   <table class="lists__item js-load table" style = "margin-left : auto; margin-right : auto; margin-top: 10px;">
			<tr>
				<td style="text-align: left;">
					<h3>
					  <a href = "/lxa/post/detail?post_no=${PostVO.post_no}">${PostVO.title}</a>
					</h3>
				</td>
				<td style="float: right;">
					  <small class="text-muted">조회수&nbsp;${PostVO.cnt} </small>
				</td>
			</tr>

			<tr>
				<td colspan="2" style="width: 1000px; text-align: left;">
					<p><c:out value='${fn:substring(PostVO.context.replaceAll("\\\<.*?\\\>",""),0, 150)}' />.. <small class="text-muted"> </small></p>
					<small class="text-muted"><p>KEYWORD: ${PostVO.keyword}</p></small>
					   <small class="text-muted"><c:out value='${fn:substring(PostVO.now, 0, 19)}'/> <cite title="Source Title">by.<a href = "/lxa/blog/user_blog?name=${PostVO.name}">${PostVO.name}</a></cite></small>
					   				<span style="float: right;">&nbsp;&nbsp;&nbsp;댓글&nbsp;${PostVO.comment_Cnt}&nbsp;
									좋아요&nbsp;${PostVO.like_cnt}</span>
			 	</td>
			</tr>

   </table>
		</c:forEach>
</div>
<br>
  <div id="js-btn-wrap" class="btn-wrap"> <a href="javascript:;" class="button">more</a> </div>
</div>
</div>

  <div class="tab-pane fade show" id="profile">
<div class="blog">
      <div class="container">

           <div class="row">

				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" data-aos="fade-right">
					 <div class="card text-center">
                        <img class="card-img-top" src="https://images.pexels.com/photos/39811/pexels-photo-39811.jpeg?h=350&auto=compress&cs=tinysrgb" alt="" width="100%">
                        <div class="card-block">
                            <h4 class="card-title">Post Title</h4>
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.</p>
                            <a class="btn btn-default" href="#">Read More</a>
                        </div>
                     </div>
                </div>

                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" data-aos="fade-up">
					 <div class="card text-center">
                        <img class="card-img-top" src="https://images.pexels.com/photos/129105/pexels-photo-129105.jpeg?h=350&auto=compress&cs=tinysrgb" alt="" width="100%">
                        <div class="card-block">
                            <h4 class="card-title">Post Title</h4>
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.</p>
                            <a class="btn btn-default" href="#">Read More</a>
                        </div>
                     </div>
                </div>

                 <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" data-aos="fade-left">
					 <div class="card text-center">
                        <img class="card-img-top" src="https://images.pexels.com/photos/129441/pexels-photo-129441.jpeg?h=350&auto=compress&cs=tinysrgb" alt="" width="100%">
                        <div class="card-block">
                            <h4 class="card-title">Post Title</h4>
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.</p>
                            <a class="btn btn-default" href="#">Read More</a>
                        </div>
                     </div>
                </div>

            </div>

    </div>
</div>






		<div class="col-sm-12" style = "margin-top: 50px;">
		<div class="page-header text-muted" style="float: right;" >
		<ul class="nav">
		<li><a href="list">· <b><spring:message code="latest"/></b></a></li>
		<li><a href="list_pop">· <spring:message code="popularity"/>&nbsp;</a></li>
		<li><a href="list_cnt">· <spring:message code="cnt"/></a></li>
		</ul>
		</div>
		</div>

<div id="contents">
  <div id="js-load" class="lists">

<!-- alter table blog modify column now timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP; -->

<c:forEach items = "${list}" var = "PostVO">
   <table class="lists__item js-load table" style = "margin-left : auto; margin-right : auto; margin-top: 10px;">
			<tr>
				<td style="text-align: left;">
					<h3>
					  <a href = "/lxa/post/detail?post_no=${PostVO.post_no}">${PostVO.title}</a>
					</h3>
				</td>
				<td style="float: right;">
					  <small class="text-muted"><i class="fas fa-eye">&nbsp;${PostVO.cnt}</i> </small>
				</td>
			</tr>

			<tr>
				<td colspan="2" style="width: 1000px; text-align: left;">
					<p><c:out value='${fn:substring(PostVO.context.replaceAll("\\\<.*?\\\>",""),0, 150)}' />.. <small class="text-muted"> <i class="fas fa-angle-down"></i> </small></p>
					<small class="text-muted"><p>KEYWORD: ${PostVO.keyword}</p></small>
					   <small class="text-muted"><c:out value='${fn:substring(PostVO.now, 0, 19)}'/> <cite title="Source Title">by.<a href = "/lxa/blog/user_blog?name=${PostVO.name}">${PostVO.name}</a></cite></small>
					   				<span style="float: right;">&nbsp;&nbsp;&nbsp;<i class="fas fa-comment-dots">&nbsp;${PostVO.comment_Cnt}</i>&nbsp;
									<i class="fas fa-heart" >&nbsp;${PostVO.like_cnt}</i></span>
			 	</td>
			</tr>

   </table>
		</c:forEach>
</div>
<br>
  <div id="js-btn-wrap" class="btn-wrap"> <a href="javascript:;" class="button">more</a> </div>
</div>
  </div>
  <div class="tab-pane fade" id="dropdown1">
<div class="blog">
      <div class="container">

           <div class="row">

				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" data-aos="fade-right">
					 <div class="card text-center">
                        <img class="card-img-top" src="https://images.pexels.com/photos/39811/pexels-photo-39811.jpeg?h=350&auto=compress&cs=tinysrgb" alt="" width="100%">
                        <div class="card-block">
                            <h4 class="card-title">Post Title</h4>
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.</p>
                            <a class="btn btn-default" href="#">Read More</a>
                        </div>
                     </div>
                </div>

                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" data-aos="fade-up">
					 <div class="card text-center">
                        <img class="card-img-top" src="https://images.pexels.com/photos/129105/pexels-photo-129105.jpeg?h=350&auto=compress&cs=tinysrgb" alt="" width="100%">
                        <div class="card-block">
                            <h4 class="card-title">Post Title</h4>
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.</p>
                            <a class="btn btn-default" href="#">Read More</a>
                        </div>
                     </div>
                </div>

                 <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" data-aos="fade-left">
					 <div class="card text-center">
                        <img class="card-img-top" src="https://images.pexels.com/photos/129441/pexels-photo-129441.jpeg?h=350&auto=compress&cs=tinysrgb" alt="" width="100%">
                        <div class="card-block">
                            <h4 class="card-title">Post Title</h4>
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.</p>
                            <a class="btn btn-default" href="#">Read More</a>
                        </div>
                     </div>
                </div>

            </div>

    </div>
</div>






		<div class="col-sm-12" style = "margin-top: 50px;">
		<div class="page-header text-muted" style="float: right;" >
		<ul class="nav">
		<li><a href="list">· <b><spring:message code="latest"/></b></a></li>
		<li><a href="list_pop">· <spring:message code="popularity"/>&nbsp;</a></li>
		<li><a href="list_cnt">· <spring:message code="cnt"/></a></li>
		</ul>
		</div>
		</div>

<div id="contents">
  <div id="js-load" class="lists">

<!-- alter table blog modify column now timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP; -->

<c:forEach items = "${list}" var = "PostVO">
   <table class="lists__item js-load table" style = "margin-left : auto; margin-right : auto; margin-top: 10px;">
			<tr>
				<td style="text-align: left;">
					<h3>
					  <a href = "/lxa/post/detail?post_no=${PostVO.post_no}">${PostVO.title}</a>
					</h3>
				</td>
				<td style="float: right;">
					  <small class="text-muted"><i class="fas fa-eye">&nbsp;${PostVO.cnt}</i> </small>
				</td>
			</tr>

			<tr>
				<td colspan="2" style="width: 1000px; text-align: left;">
					<p><c:out value='${fn:substring(PostVO.context.replaceAll("\\\<.*?\\\>",""),0, 150)}' />.. <small class="text-muted"> <i class="fas fa-angle-down"></i> </small></p>
					<small class="text-muted"><p>KEYWORD: ${PostVO.keyword}</p></small>
					   <small class="text-muted"><c:out value='${fn:substring(PostVO.now, 0, 19)}'/> <cite title="Source Title">by.<a href = "/lxa/blog/user_blog?name=${PostVO.name}">${PostVO.name}</a></cite></small>
					   				<span style="float: right;">&nbsp;&nbsp;&nbsp;<i class="fas fa-comment-dots">&nbsp;${PostVO.comment_Cnt}</i>&nbsp;
									<i class="fas fa-heart" >&nbsp;${PostVO.like_cnt}</i></span>
			 	</td>
			</tr>

   </table>
		</c:forEach>
</div>
<br>
  <div id="js-btn-wrap" class="btn-wrap"> <a href="javascript:;" class="button">more</a> </div>
</div>
</div>
  <div class="tab-pane fade" id="dropdown2">
    <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater.</p>
  </div>
</div>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>