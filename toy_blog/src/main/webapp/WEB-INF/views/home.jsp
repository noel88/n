<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#key {

 border: 4px dashed #bcbcbc;
}

.col-sm-2 {
	text-align: center;
	height: 100px;

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
}

</style>

<%@ include file="/WEB-INF/views/include/head.jsp"%>
</head>
<body>

<%@ include file="/WEB-INF/views/include/nav.jsp"%>



<script>
$(function() {
  var availableTags = [

<c:forEach items = "${list}" var = "PostVO">
	"${PostVO.title}",
	"${PostVO.name}",
</c:forEach>

	 <c:forEach items = "${keyword}" var = "WordVO">
			"#${WordVO.word}",
	</c:forEach>


  ];
  $( "#tags" ).autocomplete({
    source: availableTags
  });
} );
</script>



<div class="blog">
      <div class="container">

          <div style="margin-left: auto; margin-right: auto; text-align:center; width: 60%; margin-top: 100px; margin-bottom: 30px;">


			<h2><p class="mb-0"><spring:message code="blog.blog"/></p></h2>

		</div>


           <div class="row">
				<c:forEach items="${blog_info}" varStatus="status" var="blog">
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" data-aos="fade-right">
					 <div class="card text-center">
					 <c:if test="${blog.profile_img == null}">
                        <img class="card-img-top" src="<spring:url value ='/img/no_image.png'/>" alt="" width="90%">
					 </c:if>
					 <c:if test="${blog.profile_img != null}">
                        <img class="card-img-top" src="<spring:url value ='/image/${blog.profile_img}'/>" alt="" width="100%">
                      </c:if>
                        <div class="card-block">
                            <h4 class="card-title">${blog.blog_title}</h4>
                            <p class="card-text">${blog.blog_info}</p>
                            <a class="btn btn-default" href="blog/user_blog?name=${blog.blog_user}">블로그 보기</a>
                        </div>
                     </div>
                </div>
				</c:forEach>

            </div>



<div style="margin-left: auto; margin-right: auto; text-align:center; width: 60%; margin-top: 70px; margin-bottom: 30px;">


	<h2><p class="mb-0"><spring:message code="blog.keyword"/></p></h2>

</div>

<div class='row' id = "key" style="float: none; margin : 0 auto; margin-bottom: 100px;">
 <c:forEach items = "${keyword}" var = "WordVO">

				 <div class='col-sm-2'><a class="btn btn-secondary" style="width: 80%; margin-top:15px; text-align: center; margin-left: auto; margin-right: auto;" href="/lxa/post/tags?keyword=${WordVO.word}">#${WordVO.word}</a></div>
				 <%--  <c:if test="${g.index eq 0}"><div class='col-sm-4'>#<a href="/lxa/blog/tags?keyword=${item}">${item}</a></div></c:if> --%>

</c:forEach>
</div>

    </div>
</div>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>

</body>
</html>