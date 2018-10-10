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


<table style="margin-left: auto; margin-right: auto; width: 65%; margin-top: 70px; ">

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


<div style="margin-left: auto; margin-right: auto; text-align:center; width: 60%; margin-top: 70px;">


	<h2><p class="mb-0"> B L O G &nbsp;  S E A R C H I N G</p></h2>

</div>

<div style="margin-left: 400px; margin-right: auto; text-align:center; width: 100%; margin-top: 30px;">


    <form action="lxa/serch" class="form-inline my-2 my-lg-3">
      <input name = "search" class="form-control mr-sm-2" type="text" placeholder="Search" style="width: 600px; height: 60px;">
      <button class="btn btn-secondary my-2 my-sm-3" type="submit">Search</button>
    </form>

</div>



<div style="margin-left: auto; margin-right: auto; text-align:center; width: 60%; margin-top: 70px;">


	<h2><p class="mb-0"> B L O G &nbsp;  M A G A Z I N E S </p></h2>

</div>

<table style="margin-left: auto; margin-right: auto; width: 60%; margin-top: 30px;">

	<tr style="height: 150px;">
		<td style="width: 20%;">
			<div class="card" >
			 	<div class="card-body" style="height:70%;">
				    <h5 class="card-title">MY BLOG</h5>
				    <h6 class="card-subtitle mb-2 text-muted">꿈과 열정이 있는 삶.</h6>
				   <button type="button" class="btn btn-primary" onclick ="alert('like!');"><i class="fab fa-gratipay">&nbsp;LIKE</i></button>
				</div>
			</div>
		</td>

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

		<td style="width: 20%;">
			<img src = "./resources/img/typewriter-801921_640.jpg"  style="max-width: 90%; height: auto;">
		</td>

	</tr>
	<tr style="height: 150px;">
		<td style="width: 20%;">
			<div class="card" >
			 	<div class="card-body" style="height:70%;">
				    <h5 class="card-title">MY BLOG</h5>
				    <h6 class="card-subtitle mb-2 text-muted">꿈과 열정이 있는 삶.</h6>
				   <button type="button" class="btn btn-primary" onclick ="alert('like!');"><i class="fab fa-gratipay">&nbsp;LIKE</i></button>
				</div>
			</div>
		</td>

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

		<td style="width: 20%;">
			<img src = "./resources/img/typewriter-801921_640.jpg"  style="max-width: 90%; height: auto;">
		</td>

	</tr>
	<tr style="height: 150px;">
		<td style="width: 20%;">
			<div class="card" >
			 	<div class="card-body" style="height:70%;">
				    <h5 class="card-title">MY BLOG</h5>
				    <h6 class="card-subtitle mb-2 text-muted">꿈과 열정이 있는 삶.</h6>
				   <button type="button" class="btn btn-primary" onclick ="alert('like!');"><i class="fab fa-gratipay">&nbsp;LIKE</i></button>
				</div>
			</div>
		</td>

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

		<td style="width: 20%;">
			<img src = "./resources/img/typewriter-801921_640.jpg"  style="max-width: 90%; height: auto;">
		</td>

	</tr>


</table>


<div style="margin-left: auto; margin-right: auto; text-align:center; width: 60%; margin-top: 70px;">


	<h2><p class="mb-0"> B L O G &nbsp;  W R I T E R S</p></h2>

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


	<h2><p class="mb-0"> B L O G &nbsp;  K E Y W O R D </p></h2>

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