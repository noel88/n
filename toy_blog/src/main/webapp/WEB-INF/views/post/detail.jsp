<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
.container{
    padding:5%;
    width: 800px;
    

}
.container .img{
    text-align:center;

}
.container .details{
    border-left:3px solid #ded4da;
}
.container .details p{
    font-size:15px;
    font-weight:bold;
}

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


/* CSS Test begin */
.comment-box {
    margin-top: 30px !important;
}
/* CSS Test end */

.comment-box img {
    width: 50px;
    height: 50px;
}
.comment-box .media-left {
    padding-right: 10px;
    width: 65px;
}
.comment-box .media-body p {
    border: 1px solid #ddd;
    padding: 10px;
}
.comment-box .media-body .media p {
    margin-bottom: 0;
}
.comment-box .media-heading {
    background-color: #f5f5f5;
    border: 1px solid #ddd;
    padding: 7px 10px;
    position: relative;
    margin-bottom: -1px;
}
.comment-box .media-heading:before {
    content: "";
    width: 12px;
    height: 12px;
    background-color: #f5f5f5;
    border: 1px solid #ddd;
    border-width: 1px 0 0 1px;
    -webkit-transform: rotate(-45deg);
    transform: rotate(-45deg);
    position: absolute;
    top: 10px;
    left: -6px;
}

</style>
 <%@ include file="/WEB-INF/views/include/head.jsp"%>
</head>
<body>

<%@ include file="/WEB-INF/views/include/nav.jsp"%>

<div style="max-width: 1000px; margin-right: auto; margin-left: auto; margin-bottom: 100px;">

   <table class="table" style = "margin-left : auto; margin-right : auto; margin-top : 150px;">
			<tr class="table-secondary">
				<td style="width: 70%; text-align: left;">
					<h4>
					  <small class="text-muted">[${category.category}]</small>&nbsp;${postVO.title}
					  <small class="text-muted"><a href = "/lxa/blog/user_blog?name=${postVO.name}">${postVO.name}</a>
					 </small>
					</h4>
				</td>

				<td>
					  <small class="text-muted"><i class="fas fa-calendar-alt">&nbsp;<c:out value='${fn:substring(postVO.now, 0, 19)}'/></i> </small>

				<!-- alter table post modify column now timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP; -->

				</td>

				<td>
					  <small class="text-muted"><i class="fas fa-eye">&nbsp;${postVO.cnt}</i></small>

				</td>

			</tr>
			<tr>
			<td colspan="4">${postVO.context}</td>
			</tr>
			<tr>
				<td colspan="4"> KEYWORD : ${postVO.keyword}</td>
			</tr>

   </table>



	<div class="container" style="margin-left: auto; margin-right: auto;">
	  <div class="row">
	    <div class="col-md-6 img">
	      <img width = "200px;"  src = "<spring:url value ='/image/${blog_info.profile_img}'/>" alt="" class="img-rounded">
	    </div>
	    <div class="col-md-6 details">
			<br>
	        <h5>${postVO.name}</h5>
	        <small><cite title="Source Title">${blog_info.profile_info}
	        <br>
	        <br>
	      <p>
	         ${blog_info.blog_info} <br>
	      </p>
	        </cite></small>
	    </div>
	  </div>
	</div>


<c:forEach items = "${comment}" var = "CommentVO">
				<div class='container' style="width: 95%;">
				 <div class="media comment-box">
		            <div class="media-left">
		                <a href="#">
		                    <img class="img-responsive user-photo" src = "<spring:url value ='/image/${my_info.profile_img}'/>">
		                </a>
		                 
		            </div>
		            <div class="media-body">
		                <h4 class="media-heading">${CommentVO.comment_name}
				<c:choose>
					<c:when test = "${sessionScope.name == postVO.name}">
		                	
				      		<a style="float: right;"  href= "comment_delete"><i class="fas fa-trash-alt"></i></a>
		                	<a style="float: right;" href= "comment_update_form"><i class="fas fa-edit"></i></a>
				    </c:when>
					<c:when test = "${sessionScope.name != null}">
				      	 <a href= "#" class="btn btn-secondary"><i class="fas fa-exclamation-triangle"></i></a>
					</c:when>
				</c:choose>
				      	 </h4>
		                <p>${CommentVO.comment}</p>
		              
		            </div>
		        </div>
				</div>
				
		
</c:forEach>

 <table class="table" style = "margin-left : auto; margin-right : auto; margin-top : 30px;">


			<tr class="table-secondary">
				<td >
					<form action="comment">
					<textarea style="resize: none; width: 100%; height: 100px;" name = "comment" placeholder="post a comment"></textarea>
					<input type ="hidden" name = "comment_name" value="${sessionScope.name}">
					<input type ="hidden" name = "post_no" value="${postVO.post_no}">



				<c:choose>
					<c:when test = "${sessionScope.name == null}">
					<a href="/lxa/post/loginCheck"><button type="button" class="btn btn-primary btn-xs" disabled="disabled" style="width:100%;"><i class="fas fa-comment-dots">&nbsp;comment&nbsp;</i></button></a>&nbsp;
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
					<c:when test = "${sessionScope.name == postVO.name}">

				      	 <a href= "list" class="btn btn-secondary"><i class="fas fa-list"></i></a>
				      	 <a href= "updateForm?post_no=${postVO.post_no}" class="btn btn-secondary"><i class="fas fa-edit"></i></a>
				      	 <a href= "delete?post_no=${postVO.post_no}" class="btn btn-secondary"><i class="fas fa-trash-alt"></i></a>
				      	   </c:when>
				      <c:otherwise>
				      	<a href= "list"class="btn btn-secondary"><i class="fas fa-list"></i></a>
				      	<a href= "#" class="btn btn-secondary"><i class="fas fa-exclamation-triangle"></i></a>
				      </c:otherwise>

				</c:choose>


				<%--

					세션값이 null일때 comment, like 버튼 모두 로그인 화면으로 이동.
					세션값이 있을경우 코멘트 등록, like 버튼 활성화

				--%>

				<c:choose>
					<c:when test="${sessionScope.name == null}">
					<a href="/lxa/post/loginCheck"><button type="button" class="btn btn-secondary" style="float: right;" disabled="disabled"><i class="fas fa-heart" >&nbsp;${count_like}</i></button></a>&nbsp;
					</c:when>
					<c:otherwise>
					<a href="like?post_no=${postVO.post_no}"><button type="button" class="btn btn-secondary" style="float: right;"><i class="fas fa-heart" >&nbsp;${count_like}</i></button></a>&nbsp;
					</c:otherwise>
				</c:choose>

				</td>
			</tr>

</table>

</div>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>