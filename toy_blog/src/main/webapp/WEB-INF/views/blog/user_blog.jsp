<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
</head>
<body>

<%@ include file="/WEB-INF/views/include/nav.jsp" %>
<div style="max-width: 1000px; margin-right: auto; margin-left: auto; margin-top: 150px;">
<h1 style="margin-top: 30px;">${info.blog_title}</h1>

		<!-- 블로그 페이지 -->

		<table style="margin-top: 50px; margin-bottom: 100px; width: 65%; float: left;">
		<c:forEach items = "${my}" var = "PostVO">
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