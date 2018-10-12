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

<c:forEach items = "${list}" var = "BlogVO">
	"${BlogVO.title}",
	"${BlogVO.name}",
	<c:forEach items="${fn:split(BlogVO.keyword, '#')}" var="item">
		<c:if test = "${item != ''}">
			"#${item}",
		</c:if>
	</c:forEach>


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


<div class='row' style="float: none; margin : 0 auto;">
    <form action="search/search" class="form-inline my-2 my-lg-3">
     <div class="container">

	            <div id="imaginary_container">
	                <div class="input-group stylish-input-group">
	                    <input type="text" class="form-control" style="width: 850px;" id ="tags" name = "search" placeholder='<spring:message code="bar"/>' >
	                    <button type="submit" class="btn btn-primary">
	                            <i class="fas fa-search"></i>
	                        </button>
	                    <span class="input-group-addon">

	                    </span>
	                </div>
	            </div>

		</div>
    </form>
</div>



<div style="margin-left: auto; margin-right: auto; text-align:center; width: 60%; margin-top: 70px; margin-bottom: 30px;">


	<h2><p class="mb-0"><spring:message code="blog.keyword"/></p></h2>

</div>

<%-- <table border="1" style="  margin-left: auto; margin-right: auto; width: 60%; margin-top: 30px; margin-bottom: 100px;">
	<tr style=" margin: auto;">
		 <c:forEach items = "${list}" var = "BlogVO">
		 	<c:forEach items="${fn:split(BlogVO.keyword, '#')}" var="item" varStatus="g">
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
		 <c:forEach items = "${list}" var = "BlogVO">
		 	<c:forEach items="${fn:split(BlogVO.keyword, '#')}" var="item" varStatus="g">
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


<div class='row' id = "key" style="float: none; margin : 0 auto;">
 <c:forEach items = "${list}" var = "BlogVO">
		 	<c:forEach items="${fn:split(BlogVO.keyword, '#')}" var="item" varStatus="g">
		 		<c:if test = "${item != ''}">
				 <div class='col-sm-2'><a class="btn btn-secondary btn-lg" href="/lxa/blog/tags?keyword=${item}">#${item}</a></div>
				 <%--  <c:if test="${g.index eq 0}"><div class='col-sm-4'>#<a href="/lxa/blog/tags?keyword=${item}">${item}</a></div></c:if> --%>
  				</c:if>
			</c:forEach>
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
			  <c:forEach items = "${list}" var = "BlogVO"  end = "0">
			    ${BlogVO.name}'s blog
			    </c:forEach>
			  </a>
<c:forEach items = "${list}" var = "BlogVO"  end = "1">
			  <a href="/lxa/blog/detail?no=${BlogVO.no}" class="list-group-item list-group-item-action">${BlogVO.title}
			  </a>
</c:forEach>


			</div>
		</td>
		<td style="width: 20%;">
<c:forEach items = "${list}" var = "BlogVO"  end = "0">
			<blockquote class="blockquote">
		  	<p class="mb-0"><c:out value='${fn:substring(BlogVO.context.replaceAll("\\\<.*?\\\>",""),0, 150)}' />.. <small class="text-muted"> <i class="fas fa-angle-down"></i> </small></p>
		  	<footer class="blockquote-footer">Writer <cite title="Source Title">by. ${BlogVO.name}</cite></footer>
			</blockquote>
		</c:forEach>
		</td>
	</tr>


	<tr style="height: 150px;">

		<td style="width: 20%;">
			<div class="list-group" style=" height: 100%;" >
			  <a href="#" class="list-group-item list-group-item-action active">
			  <c:forEach items = "${list}" var = "BlogVO"  begin = "4" end = "4">
			    ${BlogVO.name}'s blog
			    </c:forEach>
			  </a>
<c:forEach items = "${list}" var = "BlogVO"  begin = "4" end = "5">
			  <a href="/lxa/blog/detail?no=${BlogVO.no}" class="list-group-item list-group-item-action">${BlogVO.title}
			  </a>
</c:forEach>


			</div>
		</td>
		<td style="width: 20%;">
<c:forEach items = "${list}" var = "BlogVO"  begin = "4" end = "4">
			<blockquote class="blockquote">
		  	<p class="mb-0"><c:out value='${fn:substring(BlogVO.context.replaceAll("\\\<.*?\\\>",""),0, 150)}' />.. <small class="text-muted"> <i class="fas fa-angle-down"></i> </small></p>
		  	<footer class="blockquote-footer">Writer <cite title="Source Title">by. ${BlogVO.name}</cite></footer>
			</blockquote>
		</c:forEach>
		</td>
	</tr>

</table> --%>


</div>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>

</body>
</html>