<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<%@ include file="/WEB-INF/views/include/head.jsp"%>
</head>
<body>

<%@ include file="/WEB-INF/views/include/nav.jsp"%>

<div style="max-width: 1500px; margin-right: auto; margin-left: auto;">


<table style="margin-left: auto; margin-right: auto; width: 65%; margin-top: 30px; ">
	<tr>
		<td colspan="4"><h2><p class="text-danger"><i class="far fa-comment-alt">Event</i></p></h2></td>
	</tr>
	<tr style="height: 160px;">
		<td style="width: 50%;" colspan="2" rowspan="2"><img src = "./resources/img/books-1245690_640.jpg" style=" max-width: 100%; height: auto;"></td>
		<td style="width: 25%;"><img src = "./resources/img/adwords-793034_640.jpg" style="max-width: 100%; height: auto;"></td>
		<td style="width: 25%;"><img src = "./resources/img/social-media-1989152_640.jpg"  style="max-width: 100%; height: auto;"></td>
	</tr>
	<tr style="height: 160px;">
		<td><img src = "./resources/img/typewriter-801921_640.jpg"  style="max-width: 100%; height: auto;"></td>
		<td><img src = "./resources/img/books-1245690_640.jpg"  style="max-width: 100%; height: auto;"></td>
	</tr>

	<tr>
		<td colspan="4"></td>
	</tr>
</table>


<table style="margin-left: auto; margin-right: auto; width: 60%; margin-top: 30px;">

	<tr>
		<td colspan="4"><h2><p class="text-warning"><i class="fas fa-star">NEW</i></p></h2></td>
	</tr>

	<tr style="height: 150px;">
		<td style="width: 20%;">
			<div class="list-group" style=" height: 100%;" >
			  <a href="#" class="list-group-item list-group-item-action active">
			    블로그명
			  </a>
			  <a href="#" class="list-group-item list-group-item-action">블로그제목1
			  </a>
			  <a href="#" class="list-group-item list-group-item-action disabled">블로그제목2
			  </a>

			</div>
		</td>
		<td style="width: 20%;">
			<blockquote class="blockquote">
		  	<p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
		  	<footer class="blockquote-footer">블로그 작가 <cite title="Source Title">by. ###</cite></footer>
			</blockquote>
		</td>


		<td style="width: 20%;">
			<img src = "./resources/img/typewriter-801921_640.jpg"  style="max-width: 100%; height: auto;">
		</td>


		<td style="width: 20%;">
			<div class="card" >
			 	<div class="card-body" style="height:70%;">
				    <h4 class="card-title">Card title</h4>
				    <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    <a href="#" class="card-link">Card link</a>
				    <a href="#" class="card-link">Another link</a>
				</div>
			</div>
		</td>
	</tr>

</table>

<table style="margin-left: auto; margin-right: auto; width: 60%; margin-top: 30px; margin-bottom: 100px;">

	<tr>
		<td colspan="6"><h2><p class="text-info"> <i class="fas fa-align-justify">BLOG</i> </p></h2></td>
	</tr>
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


</div>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>

</body>
</html>