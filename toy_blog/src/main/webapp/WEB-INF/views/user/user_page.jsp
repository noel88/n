<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
<style>
            .round {
                border-radius: 50%;
                overflow: hidden;
                width: 50px;
                height: 50px;
            }
            .round img {
                display: block;
            /* Stretch 
                  height: 100%;
                  width: 100%; */
            min-width: 100%;
            min-height: 100%;
            }
</style>
</head>
<body>


<%@ include file="/WEB-INF/views/include/nav.jsp" %>
<div style="max-width: 1000px; margin-right: auto; margin-left: auto; margin-top: 150px;">
<h1 style="margin-top: 30px;"> ${sessionScope.name}'s blog </h1>
<div style=" margin-left : auto; margin-right : auto;">
	<ul class="nav">
	<li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="/lxa" role="button" aria-haspopup="true" aria-expanded="false">카테고리별</a>
    <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 39px, 0px);">
     <a class="dropdown-item" href="page?category_no=-1">전체</a>
     <c:forEach items="${category}" var ="CategoryVO">
      <a class="dropdown-item" href="page?category_no=${CategoryVO.category_no}">${CategoryVO.category}</a>
      </c:forEach>
    </div>
  </li>
<!-- 	<li class="nav-item">
		<a class="nav-link active show" data-toggle="tab" href="#post">Post</a>
		</li> -->
		<li class="nav-item">
		<a class="nav-link" data-toggle="tab" href="#comment_my">Comment</a>
		</li>
		<li class="nav-item">
		<a class="nav-link" data-toggle="tab" href="#page">구독페이지</a>
		</li>
		<li class="nav-item">
		<a class="nav-link" data-toggle="tab" href="#info">나의정보</a>
		</li>
	</ul>

	<div id="myTabContent" class="tab-content">
		<!-- 내가 쓴 게시물 보기 -->
		<div class="tab-pane fade active show" id="post">
		<c:choose>
		<c:when test="${list_all_count == 0}">
		<table style="margin-top: 50px; margin-bottom: 100px; width: 65%; float: left;">
			<tr >
				<td>
					<div class="card bg-secondary mb-3" style="width: 100%;">
					  <div class="card-header"></div>
					  <div class="card-body">
					  <span class="card-title">
					 </span>
					    <p class="card-text">내용이 없습니다. </p>
					  </div>
					</div>
				</td>
			</tr>
		</table>
		</c:when>
		<c:otherwise>
		<table style="margin-top: 50px; margin-bottom: 100px; width: 65%; float: left;">
		<c:forEach items = "${category_post}" var = "PostVO">
			<tr >
				<td>
					<div class="card bg-secondary mb-3" style="width: 100%;">
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
		</c:otherwise>
		</c:choose>


		<div class="list-group" style="margin-top: 50px; float: right;">
		<a href= "/lxa/post/write" style="margin-left: auto; margin-right: auto; width: 220px;" class="btn btn-primary"><i class="fas fa-list">글쓰기</i></a>
		</div>
		<div class="list-group" style="margin-top: 20px; float: right;  width: 220px;">

		  <a class="list-group-item list-group-item-action text-info"> 카테고리 목록</a>
		   <c:forEach items="${category}" var ="CategoryVO" varStatus="status">
		  	<a href="#" class="list-group-item list-group-item-action disabled"><i class="fas fa-arrow-right">&nbsp;${CategoryVO.category}
		  	(${category_count.get(status.index)})</i></a>
		  </c:forEach>
		</div>

		<ul class="list-group" style="margin-top: 20px; float: right; width: 220px;">
			  <li class="list-group-item d-flex justify-content-between align-items-center">
			    오늘의 새글
			    <span class="badge badge-primary badge-pill">${list_count}</span>
			  </li>
			  <li class="list-group-item d-flex justify-content-between align-items-center">
			    오늘의 댓글
			    <span class="badge badge-primary badge-pill">0</span>
			  </li>
			  <li class="list-group-item d-flex justify-content-between align-items-center">
			    오늘의 좋아요
			    <span class="badge badge-primary badge-pill">0</span>
			  </li>

			    <c:if test = "${user_auth == 'N'}">
			  <li class="list-group-item d-flex justify-content-between align-items-center">
			  	<p class="text-danger">	이메일 미인증 사용자</p>
			  </li>
			  	</c:if>

			  	 <c:if test = "${user_auth == 'y'}">
			  <li class="list-group-item d-flex justify-content-between align-items-center">
			  	<p class="text-success">이메일 인증 사용자</p>
			  </li>
			  	 </c:if>


		</ul>

		</div>





		<!-- 내가 쓴 댓글 보기 -->
		<div class="tab-pane fade" id="comment_my">
			 <table class="table" style = "margin-left : auto; margin-right : auto; margin-top : 30px; width: 70%;">
			<c:forEach items="${my_comment}" var="JoinVO">
			<tr>
				<td style="text-align: left;">
					<h3>
					  <i class="fas fa-clipboard-list"><a href="/post/detail?post_no=${JoinVO.post_no}">${JoinVO.title}</a></i>
					</h3>
				</td>

			</tr>
			<tr>
				<td colspan="2" style="width: 750px; text-align: left;">
						<span style="float: left;"><i class="fas fa-angle-double-right">${JoinVO.comment}</i></span>
			 	</td>
			</tr>
			</c:forEach>
			<tr style="height: 70px;">
  			  </tr>

   			</table>
		</div>

		<!-- 구독페이지 -->
		<div class="tab-pane fade" id="page">
		<c:choose>
		<c:when test="${sub == null}">
		<table style="margin-top: 50px; margin-bottom: 100px; width: 65%; float: left;">
			<tr >
				<td>
					<div class="card bg-secondary mb-3" style="width: 100%;">
					  <div class="card-header"><a href="#"></a></div>
					  <div class="card-body">
					    <p class="card-text">구독하는 블로그가 없습니다.</p>
					  </div>
					</div>
				</td>
			</tr>

		</table>
		</c:when>
		</c:choose>


		<table style="margin-top: 50px; margin-bottom: 100px; width: 65%; float: left;">
		<c:forEach items = "${sub}" var = "BlogVO">
			<tr >
				<td>
					<div class="card bg-secondary mb-3" style="width: 100%;">
					  <div class="card-header"><a href="#">${BlogVO.blog_title}</a></div>
					  <div class="card-body">
					    <p class="card-text">${BlogVO.blog_info }</p>
					  </div>
					</div>
				</td>
			</tr>
		</c:forEach>

		</table>
		</div>
		
		<div class="tab-pane fade" id="info">
		
		
		
		<table class="table" border="1">
			<tr>
				<td>사진</td>
				<td><div class="round"><img width="50px;" height="50px;" src = "<spring:url value ='/image/${info.profile_img}'/>"></div></td>
			</tr>
			<tr>
				<td>프로필정보</td>
				<td>${info.profile_info}</td>
			</tr>
			<tr>
				<td>블로그 제목</td>
				<td>${info.blog_title}</td>
			</tr>
			<tr>
				<td>블로그 내용</td>
				<td>${info.blog_info }</td>
			</tr>
			<tr>
				<td>블로그 사진</td>
				<td><img width="100px;" height="100px;" src = "<spring:url value ='/image/${info.blog_img}'/>"></td>
			</tr>
			
		
		</table>
		
		
		</div>



	</div>
</div>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>