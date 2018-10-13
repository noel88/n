<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/views/include/head.jsp"%>
</head>
<body>

<%@ include file="/WEB-INF/views/include/nav.jsp"%>


<div style="max-width: 1000px; margin-right: auto; margin-left: auto;">
<div style="margin-left: auto; margin-right: auto; text-align:center; width: 60%; margin-top: 70px;">


	<h2><p class="mb-0"> 글 제목 검색 결과 ${title_cnt}건 입니다. </p></h2>

</div>

<div id="contents">


<!-- alter table blog modify column now timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP; -->

<c:forEach items = "${title}" var = "BlogVO">
   <table class="table" style = "margin-left : auto; margin-right : auto; margin-top : 30px; margin-bottom: 100px;">
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
					   <small class="text-muted"><c:out value='${fn:substring(BlogVO.now, 0, 19)}'/> <cite title="Source Title">by.${BlogVO.name}</cite></small>
					   				<span style="float: right;">&nbsp;&nbsp;&nbsp;<i class="fas fa-comment-dots">&nbsp;${BlogVO.comment_Cnt}</i>&nbsp;
									<i class="fas fa-heart" >&nbsp;${BlogVO.like_count}</i></span>
			 	</td>
			</tr>

   </table>
		</c:forEach>

<br>

</div>



<div style="margin-left: auto; margin-right: auto; text-align:center; width: 60%; margin-top: 70px;">


	<h2><p class="mb-0"> 글 내용 검색 결과 ${context_cnt}건 입니다. </p></h2>

</div>


<div id="contents">



<c:forEach items = "${context}" var = "BlogVO">
   <table class="table" style = "margin-left : auto; margin-right : auto; margin-top : 30px; width: 50%;">
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
					   <small class="text-muted"><c:out value='${fn:substring(BlogVO.now, 0, 19)}'/> <cite title="Source Title">by.${BlogVO.name}</cite></small>
					   				<span style="float: right;">&nbsp;&nbsp;&nbsp;<i class="fas fa-comment-dots">&nbsp;${BlogVO.comment_Cnt}</i>&nbsp;
									<i class="fas fa-heart" >&nbsp;${BlogVO.like_count}</i></span>
			 	</td>
			</tr>

   </table>
		</c:forEach>

<br>

</div>

<div style="margin-left: auto; margin-right: auto; text-align:center; width: 60%; margin-top: 70px;">


	<h2><p class="mb-0"> 작성자 검색 결과 ${name_cnt}건 입니다. </p></h2>

</div>


<div id="contents">



<c:forEach items = "${name}" var = "BlogVO">
   <table class="table" style = "margin-left : auto; margin-right : auto; margin-top : 30px; width: 50%;">
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
					   <small class="text-muted"><c:out value='${fn:substring(BlogVO.now, 0, 19)}'/> <cite title="Source Title">by.${BlogVO.name}</cite></small>
					   				<span style="float: right;">&nbsp;&nbsp;&nbsp;<i class="fas fa-comment-dots">&nbsp;${BlogVO.comment_Cnt}</i>&nbsp;
									<i class="fas fa-heart" >&nbsp;${BlogVO.like_count}</i></span>
			 	</td>
			</tr>

   </table>
		</c:forEach>

<br>

</div>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>