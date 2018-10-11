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


<script>
$(function() {
  var availableTags = [
   
<c:forEach items = "${list}" var = "BlogVO">
	"TITLE : ${BlogVO.title}",
	"WRITER : ${BlogVO.name}",
</c:forEach>
	  
  ];
  $( "#tags" ).autocomplete({
    source: availableTags
  });
} );
</script>


<div style="margin-left: auto; margin-right: auto; text-align:center; width: 60%; margin-top: 70px;">


	<h2><p class="mb-0"><spring:message code="search"/></p></h2>

</div>

<div style="margin-left: 120px; margin-right: auto; text-align:center; width: 100%; margin-top: 30px;">

    <form action="search/search" class="form-inline my-2 my-lg-3">
     <div class="container">
		<div class="row">
	        <div class="col-sm-9 col-sm-offset-3">
	            <div id="imaginary_container"> 
	                <div class="input-group stylish-input-group">
	                    <input type="text" class="form-control" id ="tags" placeholder="<spring:message code="bar"/>" >
	                    <span class="input-group-addon">
	                        <button type="submit" class = "btn btn-primary">
	                            <i class="fas fa-search"></i>
	                        </button>  
	                    </span>
	                </div>
	            </div>
	        </div>
		</div>
	</div>
    </form>

</div>



<div style="margin-left: auto; margin-right: auto; text-align:center; width: 60%; margin-top: 70px;">


	<h2><p class="mb-0"> <spring:message code="magazines"/> </p></h2>

</div>

<table style="margin-left: auto; margin-right: auto; width: 60%; margin-top: 30px;">

	<tr style="height: 150px;">

		<td style="width: 20%;">
			<div class="list-group" style=" height: 100%;" >
			  <a href="#" class="list-group-item list-group-item-action active">
			    TABLE OF CONTENTS
			  </a>
			  <a href="#" class="list-group-item list-group-item-action">CONTENT - TITLE1
			  </a>
			  <a href="#" class="list-group-item list-group-item-action disabled">CONTENT - TITLE2
			  </a>

			</div>
		</td>

		<td style="width: 20%;">
			<blockquote class="blockquote">
		  	<p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
		  	<footer class="blockquote-footer">Writer <cite title="Source Title">by. admin</cite></footer>
			</blockquote>
		</td>

		

	</tr>
	<tr style="height: 150px;">
		

		<td style="width: 20%;">
			<div class="list-group" style=" height: 100%;" >
			  <a href="#" class="list-group-item list-group-item-action active">
			    TABLE OF CONTENTS
			  </a>
			  <a href="#" class="list-group-item list-group-item-action">CONTENT - TITLE1
			  </a>
			  <a href="#" class="list-group-item list-group-item-action disabled">CONTENT - TITLE2
			  </a>

			</div>
		</td>

		<td style="width: 20%;">
			<blockquote class="blockquote">
		  	<p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
		  	<footer class="blockquote-footer">Writer <cite title="Source Title">by. admin</cite></footer>
			</blockquote>
		</td>

		
	</tr>
	

</table>


<div style="margin-left: auto; margin-right: auto; text-align:center; width: 60%; margin-top: 70px;">


	<h2><p class="mb-0"> <spring:message code="blog.writer"/></p></h2>

</div>
<table style="margin-left: auto; margin-right: auto; width: 60%; margin-top: 30px;">

	<tr style="height: 150px;">
		<td style="width: 15%;"><div class="card text-white bg-dark mb-3" style="max-width: 20rem;">
			<div class="card-header">작성자</div>
				<div class="card-body">
			   	<h4 class="card-title">제목</h4>
			    <p class="card-text">내용이 표시됩니다.</p>
			  	</div>
			</div>
		</td>

		<td style="width: 15%;"><div class="card bg-light mb-3" style="max-width: 20rem;">
			  <div class="card-header">작성자</div>
			  <div class="card-body">
			    <h4 class="card-title">제목</h4>
			    <p class="card-text">내용이 표시됩니다.</p>
			  </div>
			</div>
		</td>

		<td style="width: 15%;"><div class="card text-white bg-dark mb-3" style="max-width: 20rem;">
		  	<div class="card-header">작성자</div>
			  	<div class="card-body">
			    <h4 class="card-title">제목</h4>
			    <p class="card-text">내용이 표시됩니다.</p>
			  	</div>
			</div>
		</td>

		<td style="width: 15%;"><div class="card bg-light mb-3" style="max-width: 20rem;">
		 	<div class="card-header">작성자</div>
			  	<div class="card-body">
			    <h4 class="card-title">제목</h4>
			    <p class="card-text">내용이 표시됩니다.</p>
			 	</div>
			</div>
		</td>

		<td style="width: 15%;"><div class="card text-white bg-dark mb-3" style="max-width: 20rem;">
		  <div class="card-header">작성자</div>
			  <div class="card-body">
			    <h4 class="card-title">제목</h4>
			    <p class="card-text">내용이 표시됩니다.</p>
			  </div>
		</div>
		</td>

		<td style="width: 15%;"><div class="card bg-light mb-3" style="max-width: 20rem;">
		  	<div class="card-header">작성자</div>
			  <div class="card-body">
			    <h4 class="card-title">제목</h4>
			    <p class="card-text">내용이 표시됩니다.</p>
			  </div>
			</div>
		</td>

	</tr>

</table>

<div style="margin-left: auto; margin-right: auto; text-align:center; width: 60%; margin-top: 70px;">


	<h2><p class="mb-0"><spring:message code="blog.keyword"/></p></h2>

</div>

<table border="1" style="  margin-left: auto; margin-right: auto; width: 60%; margin-top: 30px; margin-bottom: 100px;">

	<tr style=" margin: auto;">
		<td style="width: 20%; height: 100px;  text-align: center;">#시사,이슈</td>
		<td style="width: 20%; height: 100px;  text-align: center;">#그림,웹툰</td>
		<td style="width: 20%; height: 100px;  text-align: center;">#IT,트렌드</td>
		<td style="width: 20%; height: 100px;  text-align: center;">#사진,촬영</td>
		<td style="width: 20%; height: 100px;  text-align: center;">#건강,운동</td>

	</tr>
	<tr>
		<td style="width: 20%; height: 100px;  text-align: center;">#사랑,이별</td>
		<td style="width: 20%; height: 100px;  text-align: center;">#건축,설계</td>
		<td style="width: 20%; height: 100px;  text-align: center;">#문화,예술</td>
		<td style="width: 20%; height: 100px;  text-align: center;">#뮤직인사이드</td>
		<td style="width: 20%; height: 100px;  text-align: center;">#영화리뷰</td>

	</tr>
</table>

</div>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>

</body>
</html>