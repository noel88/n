<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="org.pro.domain.BoardVo"%>
<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>숙소 등록하기</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">



</head>


<body>


<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/">HomePage</a>

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

   <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="text" placeholder="Search" style="width: 500px; height: 28px">
      <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
    </form>
  <div class="collapse navbar-collapse" id="navbarColor03">


    <ul class="navbar-nav mr-auto" style = "float: right;">
       <li class="nav-item active">
        <a class="nav-link" href="#">도움말</a>
      </li>

<c:choose>
	<c:when test = "${sessionScope.id == null}">
      <li class="nav-item">
        <a class="nav-link" href="/user/joinForm">회원가입</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/user/loginForm">로그인</a>
      </li>
      </c:when>
      <c:otherwise>
       <li class="nav-item">
        <a class="nav-link" href="/board/boardCreateForm">호스팅하기</a>
      </li>
   <li class="nav-item">
        <a class="nav-link" href="/user/logout">로그아웃</a>
      </li>
      </c:otherwise>
</c:choose>

    </ul>


  </div>
</nav>


<script type="text/javascript">

	var today = new Date();
	//taday.setDate(today.getDate);

</script>





<form action="create">


<table class = "table table-hover" style="margin-left: auto; margin-right: auto; width : 850px;">
  <thead>
    <tr>
      <th scope="col" colspan="2">
      	<h3>숙소 등록하기</h3>
      </th>
    </tr>
  </thead>
  <tbody>


	<tr>
		<td scope = "row">제목</td>
		<td scope = "row"><input type = "text" class = "form-control"  rows = "3" name = "title"></td>
	</tr>
	<tr>
		<td>숙소위치</td>
		<td><div class="form-group">
					<select class="form-control" name = "local">
		        		<option value = "Seoul" selected="selected">서울특별시</option>
		        		<option value = "Gyeonggi-do">경기도</option>
		        		<option value = "Busan">부산특별시</option>
		        		<option value = "Daegu">대구광역시</option>
		        		<option value = "Incheon">인천광역시</option>
		        		<option value = "Daejeon">대전광역시</option>
		        		<option value = "UIsan">울산광역시</option>
		        		<option value = "Sejong">세종시</option>
		        		<option value = "Gangwon-do">강원도</option>
		        		<option value = "Chungcheongbuk-do">충청북도</option>
		        		<option value = "Chungcheongnam-do">충청남도</option>
		        		<option value = "Jeollabuk-do">전라북도</option>
		        		<option value = "Jeollanam-do">전라남도</option>
		        		<option value = "Gyeongsangbuk-do">경상북도</option>
		        		<option value = "Gyeongsannam-do">경산남도</option>
		        		<option value = "Jeju-do">제주도</option>

	     	 		</select>

				</div></td>
	</tr>

	<tr>
		<td>숙소종류</td>
		<td><div class="form-group">
				      		<select class="form-control" name = "roomsType">
				        		<option value = 0>하나를 선택하세요</option>
				        		<option value = 1>아파트</option>
				        		<option value = 2>주택</option>
				        		<option value = 3>별채</option>
				        		<option value = 4>독특한숙소</option>

			     	 		</select>
		  	  		</div></td>
	</tr>
	<tr>
		<td>숙박가능인원</td>
		<td><div class="form-group">
	     	 		<select class="form-control" name="numOfPeople" >
		        		<option value=1>최대 1명 숙박가능</option>
		        		<option value=2>최대 2명 숙박가능</option>
		        		<option value=3>최대 3명 숙박가능</option>
		        		<option value=4 selected="selected">최대 4명 숙박가능</option>
		        		<option value=5>최대 5명 숙박가능</option>
		        		<option value=6>최대 6명 숙박가능</option>
		        		<option value=7>최대 7명 숙박가능</option>
		        		<option value=8>최대 8명 숙박가능</option>
		        		<option value=9>최대 9명 숙박가능</option>
		        		<option value=10>최대 10명 숙박가능</option>
		        		<option value=11>최대 11명 숙박가능</option>
		        		<option value=12>최대 12명 숙박가능</option>
		        		<option value=13>최대 13명 숙박가능</option>
		        		<option value=14>최대 14명 숙박가능</option>
		        		<option value=15>최대 15명 숙박가능</option>
		        		<option value=16>최대 16명 숙박가능</option>

	     	 		</select>
		</div></td>
	</tr>
	<tr>
		<td>숙소 설명하기</td>
		<td><textarea class = "form-control" rows = "3" name = "text"></textarea></td>
	</tr>
	<tr>
		<td>숙소로 쓸수있는 기간 [시작]</td>
		<td><input type = "date" class = "form-control" min = today rows = "3" name = "g_reserveStartnDate"></td>
	</tr>
	<tr>
		<td>숙소로 쓸수있는 기간 [끝]</td>
		<td><input type = "date" class = "form-control" min = "" rows = "3" name = "g_reserveEndnDate"></td>
	</tr>
	<tr>
		<td>가격</td>
		<td><input type = "number" class = "form-control"  rows = "3" name = "price"></td>
	</tr>

	<tr>
		<td colspan="2">
			<button type = "submit" class = "btn btn-primary">등록하기</button>
		</td>
	</tr>

</tbody>
</table>
</form>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://googledrive.com/host/0B-QKv6rUoIcGREtrRTljTlQ3OTg"></script><!-- ie10-viewport-bug-workaround.js -->
<script src="http://googledrive.com/host/0B-QKv6rUoIcGeHd6VV9JczlHUjg"></script><!-- holder.js -->




</body>
</html>