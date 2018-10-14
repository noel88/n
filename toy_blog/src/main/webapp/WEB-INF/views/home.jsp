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
}

</style>

<%@ include file="/WEB-INF/views/include/head.jsp"%>
</head>
<body>

<%@ include file="/WEB-INF/views/include/nav.jsp"%>

<div style="max-width: 1000px; margin-right: auto; margin-left: auto;">




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



<div style="margin-left: auto; margin-right: auto; text-align:center; width: 60%; margin-top: 100px;">


	<h2><p class="mb-0"><spring:message code="search"/> </p></h2>

</div>


<%-- <div class='row' style="float: none; margin : 0 auto;">
    <form action="search/search" class="form-inline my-2 my-lg-3">
     <div class="container">

	            <div id="imaginary_container">
	                <div class="input-group stylish-input-group">
	                    <input type="text" class="form-control" style="width: 700px;" id ="tags" name = "search" placeholder='<spring:message code="bar"/>' >
	                    <span class="input-group-addon">
	                    <button type="submit">
	                           <span> <i class="fas fa-search"></i></span>
	                        </button>

	                    </span>
	                </div>
	            </div>

		</div>
    </form>
</div> --%>


<div class="container">
    <br/>
	<div class="row justify-content-center">
                        <div class="col-12 col-md-10 col-lg-8">
                            <form action="search/search">
                                <div class="card-body row no-gutters align-items-center">
                                    <!--end of col-->
                                    <div class="col">
                                        <input class="form-control form-control-lg form-control-borderless" id ="tags" name = "search" type="search" placeholder="Search topics or keywords">
                                    </div>
                                    <!--end of col-->
                                    <div class="col-auto">
                                        <button class="btn btn-lg btn-success" type="submit">Search</button>
                                    </div>
                                    <!--end of col-->
                                </div>
                            </form>
                        </div>
                        <!--end of col-->
                    </div>
</div>




<div style="margin-left: auto; margin-right: auto; text-align:center; width: 60%; margin-top: 70px; margin-bottom: 30px;">


	<h2><p class="mb-0"><spring:message code="blog.keyword"/></p></h2>

</div>

<%-- <table border="1" style="  margin-left: auto; margin-right: auto; width: 60%; margin-top: 30px; margin-bottom: 100px;">
	<tr style=" margin: auto;">
		 <c:forEach items = "${list}" var = "PostVO">
		 	<c:forEach items="${fn:split(PostVO.keyword, '#')}" var="item" varStatus="g">
		 		<c:if test = "${item != ''}">
						<c:if test="${g.index eq 0}"><td style="width: 20%; height: 100px; text-align: center;">#<a href="/lxa/blog/tags?keyword=${item}">${item}</a></td></c:if>
						<c:if test="${g.index eq 1}"><td style="width: 20%; height: 100px; text-align: center;">#<a href="/lxa/blog/tags?keyword=${item}">${item}</a></td></c:if>
						<c:if test="${g.index eq 2}"><td style="width: 20%; height: 100px; text-align: center;">#<a href="/lxa/blog/tags?keyword=${item}">${item}</a></td></c:if>
						<c:if test="${g.index eq 3}"><td style="width: 20%; height: 100px; text-align: center;">#<a href="/lxa/blog/tags?keyword=${item}">${item}</a></td></c:if>
						<c:if test="${g.index eq 4}"><td style="width: 20%; height: 100px; text-align: center;">#<a href="/lxa/blog/tags?keyword=${item}">${item}</a></td></c:if>
				</c:if>
			</c:forEach>
		</c:forEach>

	</tr>
	<tr style=" margin: auto;">
		 <c:forEach items = "${list}" var = "PostVO">
		 	<c:forEach items="${fn:split(PostVO.keyword, '#')}" var="item" varStatus="g">
		 		<c:if test = "${item != ''}">
						<c:if test="${g.index eq 5}"><td style="width: 20%; height: 100px; text-align: center;">#<a href="/lxa/blog/tags?keyword=${item}">${item}</a></td></c:if>
						<c:if test="${g.index eq 6}"><td style="width: 20%; height: 100px; text-align: center;">#<a href="/lxa/blog/tags?keyword=${item}">${item}</a></td></c:if>
						<c:if test="${g.index eq 7}"><td style="width: 20%; height: 100px; text-align: center;">#<a href="/lxa/blog/tags?keyword=${item}">${item}</a></td></c:if>
						<c:if test="${g.index eq 8}"><td style="width: 20%; height: 100px; text-align: center;">#<a href="/lxa/blog/tags?keyword=${item}">${item}</a></td></c:if>
						<c:if test="${g.index eq 9}"><td style="width: 20%; height: 100px; text-align: center;">#<a href="/lxa/blog/tags?keyword=${item}">${item}</a></td></c:if>
				</c:if>
			</c:forEach>
		</c:forEach>

	</tr>

</table> --%>


<%-- <div class='row' id = "key" style="float: none; margin : 0 auto;">
 <c:forEach items = "${list}" var = "PostVO">
		 	<c:forEach items="${fn:split(PostVO.keyword, '#')}" var="item" varStatus="g">
		 		<c:if test = "${item != ''}">
				 <div class='col-sm-2'><a class="btn btn-secondary btn-lg" href="/lxa/blog/tags?keyword=${item}">#${item}</a></div>
				  <c:if test="${g.index eq 0}"><div class='col-sm-4'>#<a href="/lxa/blog/tags?keyword=${item}">${item}</a></div></c:if>
  				</c:if>
			</c:forEach>
		</c:forEach>
</div> --%>

<div class='row' id = "key" style="float: none; margin : 0 auto; margin-bottom: 100px;">
 <c:forEach items = "${keyword}" var = "WordVO">
		
				 <div class='col-sm-2'><a class="btn btn-secondary btn-lg" href="/lxa/blog/tags?keyword=${WordVO.word}">#${WordVO.word}</a></div>
				 <%--  <c:if test="${g.index eq 0}"><div class='col-sm-4'>#<a href="/lxa/blog/tags?keyword=${item}">${item}</a></div></c:if> --%>
  				
</c:forEach>
</div>


<%-- <div style="margin-left: auto; margin-right: auto; text-align:center; width: 60%; margin-top: 70px;">


	<h2><p class="mb-0"> <spring:message code="magazines"/> </p></h2>

</div>

<table style="margin-left: auto; margin-right: auto; width: 60%; margin-top: 30px;">
	<tr style="height: 150px;">

		<td style="width: 20%;">
			<div class="list-group" style=" height: 100%;" >
			  <a href="#" class="list-group-item list-group-item-action active">
			  <c:forEach items = "${list}" var = "PostVO"  end = "0">
			    ${PostVO.name}'s blog
			    </c:forEach>
			  </a>
<c:forEach items = "${list}" var = "PostVO"  end = "1">
			  <a href="/lxa/post/detail?post_no=${PostVO.post_no}" class="list-group-item list-group-item-action">${PostVO.title}
			  </a>
</c:forEach>


			</div>
		</td>
		<td style="width: 20%;">
<c:forEach items = "${list}" var = "PostVO"  end = "0">
			<blockquote class="blockquote">
		  	<p class="mb-0"><c:out value='${fn:substring(PostVO.context.replaceAll("\\\<.*?\\\>",""),0, 150)}' />.. <small class="text-muted"> <i class="fas fa-angle-down"></i> </small></p>
		  	<footer class="blockquote-footer">Writer <cite title="Source Title">by. ${PostVO.name}</cite></footer>
			</blockquote>
		</c:forEach>
		</td>
	</tr>


	<tr style="height: 150px;">

		<td style="width: 20%;">
			<div class="list-group" style=" height: 100%;" >
			  <a href="#" class="list-group-item list-group-item-action active">
			  <c:forEach items = "${list}" var = "PostVO"  begin = "4" end = "4">
			    ${PostVO.name}'s blog
			    </c:forEach>
			  </a>
<c:forEach items = "${list}" var = "PostVO"  begin = "4" end = "5">
			  <a href="/lxa/post/detail?post_no=${PostVO.post_no}" class="list-group-item list-group-item-action">${PostVO.title}
			  </a>
</c:forEach>


			</div>
		</td>
		<td style="width: 20%;">
<c:forEach items = "${list}" var = "PostVO"  begin = "4" end = "4">
			<blockquote class="blockquote">
		  	<p class="mb-0"><c:out value='${fn:substring(PostVO.context.replaceAll("\\\<.*?\\\>",""),0, 150)}' />.. <small class="text-muted"> <i class="fas fa-angle-down"></i> </small></p>
		  	<footer class="blockquote-footer">Writer <cite title="Source Title">by. ${PostVO.name}</cite></footer>
			</blockquote>
		</c:forEach>
		</td>
	</tr>

</table> --%>


</div>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>

</body>
</html>