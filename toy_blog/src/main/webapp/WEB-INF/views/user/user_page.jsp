<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <link href="<c:url value="/resources/css/demo.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/medium-editor.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/default.css" />" rel="stylesheet"id="medium-editor-theme">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.css">
    <link href="<c:url value="/resources/css//bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css//bootstrap.min.css" />" rel="stylesheet">


</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="/">한글 테스트</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarColor02">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About</a>
      </li>
<c:choose>
	<c:when test = "${sessionScope.name == null}">
      <li class="nav-item">
        <a class="nav-link" href="/user/join">Start</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/user/login">Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/blog/list">List</a>
      </li>
 </c:when>
      <c:otherwise>
      <li class="nav-item">
        <a class="nav-link" href="/blog/list">List</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/blog/write">Write</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="/user/page">${sessionScope.name}, page</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/user/logout">Logout</a>
      </li>

         </c:otherwise>
</c:choose>
    </ul>

  </div>
</nav>

<h1 style="margin-top: 30px;"> Your stories </h1>



<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" data-toggle="tab" href="#home">Drafts1</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#profile">Profile</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" href="#">Disabled</a>
  </li>
  <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Action</a>
      <a class="dropdown-item" href="#">Another action</a>
      <a class="dropdown-item" href="#">Something else here</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Separated link</a>
    </div>
  </li>
</ul>
<div id="myTabContent" class="tab-content">
  <div class="tab-pane fade show active" id="home">
   <table class="table table-hover" style = "margin-left : auto; margin-right : auto; margin-top : 30px; width: 50%;">
<tr class="table-secondary">
	<td style="width: 80%">
		<h3>
		  게시물 제목
		  <small class="text-muted">작성자 이름</small>
		</h3>
		<p class="lead">게시물 내용</p>
	</td>

	<td>
		  <small class="text-muted">시간 </small>

	</td>
	<td>
		  <small class="text-muted">조회수 </small>


	</td>
</tr>


   </table>

  </div>
  <div class="tab-pane fade" id="profile">
	   <table class="table table-hover" style = "margin-left : auto; margin-right : auto; margin-top : 30px; width: 50%;">
<tr class="table-secondary">
	<td style="width: 80%">
		<h3>
		  게시물 제목
		  <small class="text-muted">작성자 이름</small>
		</h3>
		<p class="lead">게시물 내용</p>

	</td>

	<td>
		  <small class="text-muted">시간 </small>

	</td>
	<td>
		  <small class="text-muted">조회수 </small>

	</td>
	</tr>

</table>
  </div>


  <div class="tab-pane fade" id="dropdown1">
    <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork.</p>
  </div>
  <div class="tab-pane fade" id="dropdown2">
    <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater.</p>
  </div>

</div>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://googledrive.com/host/0B-QKv6rUoIcGREtrRTljTlQ3OTg"></script><!-- ie10-viewport-bug-workaround.js -->
<script src="http://googledrive.com/host/0B-QKv6rUoIcGeHd6VV9JczlHUjg"></script>


</body>
</html>