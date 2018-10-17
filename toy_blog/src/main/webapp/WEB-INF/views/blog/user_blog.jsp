<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* USER PROFILE PAGE */
 .card {
/*     margin-top: 20px;
    padding: 20px; */
    background-color: rgba(214, 224, 226, 0.2);
     -webkit-border-top-left-radius:5px;
    -moz-border-top-left-radius:5px;
    border-top-left-radius:5px;
    -webkit-border-top-right-radius:5px;
    -moz-border-top-right-radius:5px;
    border-top-right-radius:5px;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.card.hovercard {
    position: relative;
    padding-top: 0;
    overflow: hidden;
    text-align: center;
    background-color: #fff;
    background-color: rgba(255, 255, 255, 1);
}
.card.hovercard .card-background {
    height: 130px;
}
.card-background img {
    -webkit-filter: blur(25px);
    -moz-filter: blur(25px);
    -o-filter: blur(25px);
    -ms-filter: blur(25px);
    filter: blur(25px);
    margin-left: -100px;
    margin-top: -200px;
    min-width: 130%;
}
.card.hovercard .useravatar {
    position: absolute;
    top: 15px;
    left: 0;
    right: 0;
}
.card.hovercard .useravatar img {
    width: 100px;
    height: 100px;
    max-width: 100px;
    max-height: 100px;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    border-radius: 50%;
    border: 5px solid rgba(255, 255, 255, 0.5);
}
.card.hovercard .card-info {
    position: absolute;
    bottom: 14px;
    left: 0;
    right: 0;
}
.card.hovercard .card-info .card-title {
    padding:0 5px;
    font-size: 20px;
    line-height: 1;
    color: #262626;
    background-color: rgba(255, 255, 255, 0.1);
    -webkit-border-radius: 4px;
    -moz-border-radius: 4px;
    border-radius: 4px;
}
.card.hovercard .card-info {
    overflow: hidden;
    font-size: 12px;
    line-height: 20px;
    color: #737373;
    text-overflow: ellipsis;
}
.card.hovercard .bottom {
    padding: 0 20px;
    margin-bottom: 17px;
}
.btn-pref .btn {
    -webkit-border-radius:0 !important;
}

</style>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
</head>
<body>

<%@ include file="/WEB-INF/views/include/nav.jsp" %>
<div style="max-width: 1000px; margin-right: auto; margin-left: auto; margin-top: 100px;">
<div class="col-lg-6 col-sm-6">
    <div class="card hovercard" style="width: 1000px;">
        <div class="card-background">
            <img class="card-bkimg" alt="" src = "<spring:url value ='/image/${info.blog_img}'/>">
        </div>
        <div class="useravatar">
            <img alt="" src = "<spring:url value ='/image/${info.profile_img}'/>">
        </div>
        <div class="card-info"> <span class="card-title">${info.blog_title}</span>


        </div>
    </div>
</div>


		<!-- 블로그 페이지 -->

		<table style="margin-top: 30px; margin-bottom: 100px; width: 65%; float: left;">
			<tr>
				<td>
						<div class="col-sm-12">   
						<div class="page-header text-muted" style="float: left;">
						<ul class="nav">
						<li><a href="#">· Popularity&nbsp;</a></li>
						<li><a href="#">· Latest</a></li>
						</ul>
						</div> 
						</div>
				</td>
			<tr>
		<c:forEach items = "${my}" var = "PostVO">
			<tr >
				<td>
					<div class="card bg-secondary mb-3" style="width: 100%; margin-left: 15px;">
					  <div class="card-header"><a href="/lxa/post/detail?post_no=${PostVO.post_no}">${PostVO.title}</a></div>
					  <div class="card-body">
					  <span class="card-title"><c:out value='${fn:substring(PostVO.now, 0, 19)}'/>&nbsp;<i class="fas fa-eye">&nbsp;${PostVO.cnt}</i>
					  &nbsp;&nbsp;&nbsp;<i class="fas fa-comment-dots">&nbsp;${PostVO.comment_Cnt}</i>&nbsp; <i class="fas fa-heart">&nbsp;${PostVO.like_count}</i></span>
					    <p class="card-text"><c:out value='${fn:substring(PostVO.context.replaceAll("\\\<.*?\\\>",""),0, 150)}' />.. <small class="text-muted"> <i class="fas fa-angle-down"></i> </small></p>
					  </div>
					</div>
				</td>
			</tr>
		</c:forEach>

		</table>

		<div class="list-group" style="margin-top: 50px; float: right;">
			<a href= "/lxa/blog/subscribe?name=${postVO.name}" style="margin-left: auto; width : 220px; margin-right: auto;" class="btn btn-primary"><i class="fas fa-list">구독하기</i></a>
		</div>

		<ul class="list-group" style="margin-top: 20px; float: right; width: 220px;">
			  <li class="list-group-item d-flex justify-content-between align-items-center">
			    오늘의 새글
			    <span class="badge badge-primary badge-pill">${list_count}</span>
			  </li>
			  <li class="list-group-item d-flex justify-content-between align-items-center">
			    좋아요
			    <span class="badge badge-primary badge-pill">0</span>
			  </li>
			  <li class="list-group-item d-flex justify-content-between align-items-center">
			    구독자 수
			    <span class="badge badge-primary badge-pill">0</span>
			  </li>
		</ul>



</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>