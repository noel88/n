<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
<link rel="stylesheet" href="https://bootswatch.com/4/slate/bootstrap.min.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>
</head>
<body>

<div style="max-width: 1000px; margin-right: auto; margin-left: auto; margin-top: 30px;">

<table class = "table">
	<c:forEach items="${memoList}" var ="memo">

	<%-- <c:if test = "${ fn:length(memo.memoNo) == 0 }">
	<tr>
		<td colspan="3">저장된 메모가 없습니다.</td>
	</tr>
	</c:if> --%>

	<tr>
		<td colspan="3"><a href = "/memo/memoDatails?memoNo=${memo.memoNo}">${memo.memoTitle}</a></td>
	</tr>

	</c:forEach>


</table>




<nav class="navbar navbar-expand-lg navbar-dark bg-dark navbar-fixed-bottom">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor02"  style = "margin : 0 auto;">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="/">목록</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/memo/writeForm">작성</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/memo/set">설정</a>
      </li>
    </ul>
  </div>
</nav>

</div>





</body>
</html>