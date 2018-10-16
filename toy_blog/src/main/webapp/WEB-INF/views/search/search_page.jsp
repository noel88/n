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
<style>
.highlight {background-color:yellow;}
</style>

<script src="https://johannburkard.de/resources/Johann/jquery.highlight-5.js"></script>
<script>
$(document).ready(function(){

	var strKey = '${search}'; // 하이라이트를 적용할 스트링

	 if(strKey != ''){
		$('.line').highlight(strKey); //line class에 해당하는 요소들에서 strKey 값들을 하이라이트 처리
	 }

});
</script>

<body>

<%@ include file="/WEB-INF/views/include/nav.jsp" %>
<div style="max-width: 1000px; margin-right: auto; margin-left: auto; margin-top: 150px;">
<h1 style="margin-top: 30px;"> &#168;${search}&#168;(으)로 검색한 결과입니다. </h1>
<div style=" margin-left : auto; margin-right : auto;" class ="line">
	<ul class="nav nav-tabs">
		<li class="nav-item">
		<a class="nav-link active show" data-toggle="tab" href="#title">글 제목&nbsp;<span class="badge badge-pill badge-danger">${title_cnt}</span></a>
		</li>
		<li class="nav-item">
		<a class="nav-link" data-toggle="tab" href="#content">글 내용&nbsp;<span class="badge badge-pill badge-danger">${context_cnt}</span></a>
		</li>
		<li class="nav-item">
		<a class="nav-link" data-toggle="tab" href="#writer">작성자&nbsp;<span class="badge badge-pill badge-danger">${name_cnt}</span></a>
		</li>

	</ul>

	<div id="myTabContent" class="tab-content">
		<!-- 글 제목 검색 결과 -->
		<div class="tab-pane fade active show" id="title">

			   <c:choose>
					<c:when test="${title_cnt == 0}">
					 <table style = "margin-left : auto; margin-right : auto; margin-top : 80px; margin-bottom: 100px;">
						 <tr>

						 	<td>
								<p>&#168;${search}&#168;에 대한 검색 결과가 없습니다.</p>
								<p>검색어의 단어 수를 줄이거나, 보다 일반적인 검색어로 다시 검색해 보세요.</p>
								<p>두 단어 이상을 검색하신 경우, 정확하게 띄어쓰기를 한 후 검색해 보세요.</p>
								<p>키워드에 있는 특수문자를 뺀 후에 검색해 보세요.</p>
							</td>
						</tr>

					</table>
					</c:when>
					<c:otherwise>
			   <table class="table" style = "margin-left : auto; margin-right : auto; margin-top : 30px; margin-bottom: 100px;">
					<c:forEach items = "${title}" var = "PostVO">
						<tr>
							<td style="text-align: left;">
								<h3>
								  <a href = "/lxa/blog/detail?post_no=${PostVO.post_no}">${PostVO.title}</a>
								</h3>
							</td>
							<td style="float: right;">

								  <small class="text-muted"><i class="fas fa-eye">&nbsp;${PostVO.cnt}</i> </small>

							</td>

						</tr>
						<tr>
							<td colspan="2" style="width: 750px; text-align: left;">
								<p><c:out value='${fn:substring(PostVO.context.replaceAll("\\\<.*?\\\>",""),0, 150)}' />.. <small class="text-muted"> <i class="fas fa-angle-down"></i> </small></p>
								   <small class="text-muted"><c:out value='${fn:substring(PostVO.now, 0, 19)}'/> <cite title="Source Title">by.${PostVO.name}</cite></small>
								   				<span style="float: right;">&nbsp;&nbsp;&nbsp;<i class="fas fa-comment-dots">&nbsp;${PostVO.comment_Cnt}</i>&nbsp;
												<i class="fas fa-heart" >&nbsp;${PostVO.like_count}</i></span>
						 	</td>
						</tr>
						</c:forEach>
						<tr>
							<td style="margin-bottom: 100px;"></td>
						</tr>

			   </table>



					</c:otherwise>
			   </c:choose>
		</div>
		<!-- 글 내용 검색 결과 -->
		<div class="tab-pane fade" id="content">
		  <c:choose>
					<c:when test="${context_cnt == 0}">
					 <table style = "margin-left : auto; margin-right : auto; margin-top : 80px; margin-bottom: 100px;">
						 <tr>
						 	<td>
								<p>&#168;${search}&#168;에 대한 검색 결과가 없습니다.</p>
								<p>검색어의 단어 수를 줄이거나, 보다 일반적인 검색어로 다시 검색해 보세요.</p>
								<p>두 단어 이상을 검색하신 경우, 정확하게 띄어쓰기를 한 후 검색해 보세요.</p>
								<p>키워드에 있는 특수문자를 뺀 후에 검색해 보세요.</p>
							</td>
						</tr>
					</table>
					</c:when>
					<c:otherwise>
			   <table class="table" style = "margin-left : auto; margin-right : auto; margin-top : 30px; margin-bottom: 100px;">
			<c:forEach items = "${context}" var = "PostVO">
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
							<td colspan="2" style="width: 750px; text-align: left;">
								<p><c:out value='${fn:substring(PostVO.context.replaceAll("\\\<.*?\\\>",""),0, 150)}' />.. <small class="text-muted"> <i class="fas fa-angle-down"></i> </small></p>
								   <small class="text-muted"><c:out value='${fn:substring(PostVO.now, 0, 19)}'/> <cite title="Source Title">by.${PostVO.name}</cite></small>
								   				<span style="float: right;">&nbsp;&nbsp;&nbsp;<i class="fas fa-comment-dots">&nbsp;${PostVO.comment_Cnt}</i>&nbsp;
												<i class="fas fa-heart" >&nbsp;${PostVO.like_count}</i></span>
						 	</td>
						</tr>

			</c:forEach>

						<tr>
							<td style="margin-bottom: 100px;"></td>
						</tr>

			   </table>
			   </c:otherwise>
			   </c:choose>
		</div>

		<!-- 작성자 검색 결과 -->
		<div class="tab-pane fade" id="writer">
		  <c:choose>
					<c:when test="${name_cnt == 0}">
					 <table style = "margin-left : auto; margin-right : auto; margin-top : 80px; margin-bottom: 100px;">
						 <tr>
						 	<td>
								<p>&#168;${search}&#168;에 대한 검색 결과가 없습니다.</p>
								<p>검색어의 단어 수를 줄이거나, 보다 일반적인 검색어로 다시 검색해 보세요.</p>
								<p>두 단어 이상을 검색하신 경우, 정확하게 띄어쓰기를 한 후 검색해 보세요.</p>
								<p>키워드에 있는 특수문자를 뺀 후에 검색해 보세요.</p>
							</td>
						</tr>
					</table>
					</c:when>
					<c:otherwise>
			   <table class="table" style = "margin-left : auto; margin-right : auto; margin-top : 30px; margin-bottom: 100px;">
			<c:forEach items = "${name}" var = "PostVO">
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
							<td colspan="2" style="width: 750px; text-align: left;">
								<p><c:out value='${fn:substring(PostVO.context.replaceAll("\\\<.*?\\\>",""),0, 150)}' />.. <small class="text-muted"> <i class="fas fa-angle-down"></i> </small></p>
								   <small class="text-muted"><c:out value='${fn:substring(PostVO.now, 0, 19)}'/> <cite title="Source Title">by.${PostVO.name}</cite></small>
								   				<span style="float: right;">&nbsp;&nbsp;&nbsp;<i class="fas fa-comment-dots">&nbsp;${PostVO.comment_Cnt}</i>&nbsp;
												<i class="fas fa-heart" >&nbsp;${PostVO.like_count}</i></span>
						 	</td>
						</tr>
			</c:forEach>
						<tr>
							<td style="margin-bottom: 100px;"></td>
						</tr>

			   </table>
			   </c:otherwise>
			   </c:choose>
		</div>



	</div>
</div>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>