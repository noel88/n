<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <%@ include file="/WEB-INF/views/include/head.jsp"%>
</head>
<body>

<%@ include file="/WEB-INF/views/include/nav.jsp"%>

<div style="max-width: 1000px; margin-right: auto; margin-left: auto;">

   <table class="table" style = "margin-left : auto; margin-right : auto; margin-top : 30px;">
			<tr class="table-secondary">
				<td style="width: 70%; text-align: left;">
					<h3>
					 ${blogVO.title}
					  <small class="text-muted"><a href = "/lxa/blog/user_blog?name=${BlogVO.name}">${blogVO.name}</a></small>
					</h3>
				</td>

				<td>
					  <small class="text-muted"><i class="fas fa-calendar-alt">&nbsp;<c:out value='${fn:substring(blogVO.now, 0, 19)}'/></i> </small>

				<!-- alter table blog modify column now timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP; -->

				</td>

				<td>
					  <small class="text-muted"><i class="fas fa-eye">&nbsp;${blogVO.cnt}</i></small>

				</td>

			</tr>
			<tr>
			<td colspan="4">${blogVO.context}</td>
			</tr>


   </table>
<table class="table"  style = "margin-left : auto; margin-right : auto; margin-top : 30px;">
<c:forEach items = "${comment}" var = "ReplyVO">

			<tr class="table-secondary">
				<td>
				<h5><i class="fas fa-user">&nbsp;${ReplyVO.reply_name}</i></h5><hr>
				<i class="fas fa-comment">&nbsp;${ReplyVO.comment}</i>
				</td>
			</tr>

</c:forEach>

</table>
 <table class="table" style = "margin-left : auto; margin-right : auto; margin-top : 30px;">


			<tr class="table-secondary">
				<td >
					<form action="comment">
					<textarea style="resize: none; width: 100%; height: 100px;" name = "comment" placeholder="post a comment"></textarea>
					<input type ="hidden" name = "reply_name" value="${sessionScope.name}">
					<input type ="hidden" name = "blog_no" value="${blogVO.no}">



					<c:choose>
					<c:when test = "${sessionScope.name == null}">
					<a href="/lxa/blog/loginCheck"><button type="button" class="btn btn-primary btn-xs" disabled="disabled" style="width:100%;"><i class="fas fa-comment-dots">&nbsp;comment&nbsp;</i></button></a>&nbsp;
					</c:when>
					<c:otherwise>
					<button type="submit" class="btn btn-primary btn-xs" onclick ="alert('댓글이 동륵되었습니다');" style="width:100%;"><i class="fas fa-comment-dots">&nbsp;comment</i></button>&nbsp;
					</c:otherwise>
				</c:choose>
					</form>

			</tr>
			<tr class="table-secondary">
				<td>
				<c:choose>
					<c:when test = "${sessionScope.name == null}">

				      	 <a href= "list"class="btn btn-secondary"><i class="fas fa-list"></i></a>
				      	   </c:when>
					<c:when test = "${sessionScope.name == blogVO.name}">

				      	 <a href= "list" class="btn btn-secondary"><i class="fas fa-list"></i></a>
				      	 <a href= "updateForm?no=${blogVO.no}" class="btn btn-secondary"><i class="fas fa-edit"></i></a>
				      	 <a href= "delete?no=${blogVO.no}" class="btn btn-secondary"><i class="fas fa-trash-alt"></i></a>
				      	   </c:when>
				      <c:otherwise>
				      	<a href= "list"class="btn btn-secondary"><i class="fas fa-list"></i></a>
				      </c:otherwise>


				</c:choose>
				<%--

					세션값이 null일때 comment, like 버튼 모두 로그인 화면으로 이동.
					세션값이 있을경우 코멘트 등록, like 버튼 활성화

				--%>

				<c:choose>
					<c:when test = "${sessionScope.name == null}">
					<a href="/lxa/blog/loginCheck"><button type="button" class="btn btn-secondary" style="float: right;" disabled="disabled"><i class="fas fa-heart" >&nbsp;${count_like}</i></button></a>&nbsp;
					</c:when>
					<c:otherwise>
					<a href="like?blog_no=${blogVO.no}"><button type="button" class="btn btn-secondary" style="float: right;"><i class="fas fa-heart" >&nbsp;${count_like}</i></button></a>&nbsp;
					</c:otherwise>
				</c:choose>
				</td>
			</tr>

</table>

</div>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>