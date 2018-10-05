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



   <table class="table"  style = "margin-left : auto; margin-right : auto; margin-top : 30px; width: 50%;">
			<tr class="table-secondary">
				<td style="width: 70%; text-align: left;">
					<h3>
					 ${blogVO.title}
					  <small class="text-muted">${blogVO.name}</small>
					</h3>
				</td>

				<td>
					  <small class="text-muted"><i class="fas fa-calendar-alt">&nbsp;${blogVO.now}</i> </small>

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

 <table class="table"  style = "margin-left : auto; margin-right : auto; margin-top : 30px; width: 80%;">

			<tr class="table-secondary">
				<td>
					comment ${count}
				</td>
			</tr>
			<tr class="table-secondary">
				<td>
					<form action="comment">
					<textarea style="resize: none; width: 100%; height: 100px;" name = "comment" placeholder="post a comment"></textarea>
					<input type ="hidden" name = "reply_name" value="${sessionScope.name}">
					<input type ="hidden" name = "blog_no" value="${blogVO.no}">

				</td>
			</tr>
			<tr class="table-secondary">
				<td>
				<c:choose>
					<c:when test = "${sessionScope.name == null}">

				      	 <a href= "list" class="btn btn-primary"><i class="fas fa-list">&nbsp;list</i></a>
				      	   </c:when>
					<c:when test = "${sessionScope.name == blogVO.name}">

				      	 <a href= "list" class="btn btn-primary"><i class="fas fa-list">&nbsp;list</i></a>
				      	 <a href= "updateForm?no=${blogVO.no}" class="btn btn-primary"><i class="fas fa-edit">&nbsp;update</i></a>
				      	 <a href= "delete?no=${blogVO.no}" class="btn btn-primary"><i class="fas fa-trash-alt">&nbsp;delete</i></a>
				      	   </c:when>
				      <c:otherwise>
				      	 <a href= "list" class="btn btn-primary"><i class="fas fa-list">&nbsp;list</i></a>
				      </c:otherwise>


				</c:choose>
				<%--

					세션값이 null일때 comment, like 버튼 모두 로그인 화면으로 이동.
					세션값이 있을경우 코멘트 등록, like 버튼 활성화

				--%>


				<c:choose>
					<c:when test = "${sessionScope.name == null}">
					<a href="/lxa/blog/loginCheck"><button type="button" class="btn btn-primary" style="float: right;" disabled="disabled"><i class="fab fa-gratipay">&nbsp;${like}</i></button></a>&nbsp;
					<a href="/lxa/blog/loginCheck"><button type="button" class="btn btn-primary" style="float: right;" disabled="disabled"><i class="fas fa-comment-dots">&nbsp;comment&nbsp;</i></button></a>&nbsp;
					</c:when>
					<c:otherwise>
					<a href="like_count?no=${blogVO.no}"><button type="button" class="btn btn-primary" onclick ="alert('like!');" style="float: right;"><i class="fab fa-gratipay">&nbsp;${like}</i></button></a>&nbsp;
					<button type="submit" class="btn btn-primary" onclick ="alert('댓글이 동륵되었습니다');" style="float: right;"><i class="fas fa-comment-dots">&nbsp;comment</i></button>&nbsp;
					</c:otherwise>
				</c:choose>
					</form>
				</td>
			</tr>

</table>
<table class="table"  style = "margin-left : auto; margin-right : auto; margin-top : 30px; width: 80%;">
<c:forEach items = "${comment}" var = "ReplyVO">

			<tr class="table-secondary">
				<td>
				<h5><i class="fas fa-user">&nbsp;${ReplyVO.reply_name}</i></h5><hr>
				<i class="fas fa-comment">${ReplyVO.comment}</i>
				</td>
			</tr>
</c:forEach>
 			<tr style="height: 70px;">
  			  </tr>
</table>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>