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
<div style="max-width: 1000px; margin-right: auto; margin-left: auto; margin-top: 150px;">


			블로그 제목, 블로그 한줄설명, 블로그 이미지, 
			내 프로필 정보(사진, 한줄소개), 카테고리 설정
			
			<form action="blog" method="post" onsubmit="return validate()">
				<table style=" margin-top : 30px; width: 60%; margin-bottom: 100px; float: left;">
				<tr>
					<td>
						<div class="form-group">
							<label for="exampleInputname1">프로필 사진</label>
							<input type="text" class="form-control" name="profile_img" value="${blog_info.profile_img}">
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="form-group">
							<label for="exampleInputPassword1">프로필 한줄설명</label>
							<input type="text" class="form-control" name="profile_info" value = "${blog_info.profile_info }">
						</div>
					</td>
				</tr>
				
				<tr>
					<td>
						<div class="form-group">
							<label for="exampleInputname1">블로그제목</label>
							<input type="text" class="form-control" name="blog_title" value ="${blog_info.blog_title}">
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="form-group">
							<label for="exampleInputPassword1">블로그 한줄설명</label>
							<input type="text" class="form-control" name="blog_info" value = "${blog_info.blog_info}">
						</div>
					</td>
				</tr>
				
				
				
				<tr>
					<td>
						<button type="submit" class="btn btn-primary"><i class="fas fa-edit">&nbsp;update</i></button>
					</td>
				</tr>
				</table>
			</form>
			
			<div class="list-group" style="margin-top: 20px; float: right; width: 350px;">
		  <a class="list-group-item list-group-item-action text-info">
		    카테고리 목록
		  </a>
		  <a href="#" class="list-group-item list-group-item-action">
		  	<form action="blog_category">
			<input type="text" class="form-control" name="category" placeholder="카테고리를 추가해주세요" style=" width:220px; float: left">
			<input type="hidden" class="form-control" name="blog_no" value = "${blog_info.blog_no}">
			<button type="submit" class="btn btn-primary"><i class="fas fa-plus"></i></button>
		  	</form>
						
		  </a>
		  <c:forEach items="${category}" var ="CategoryVO">
		  	<a href="#" class="list-group-item list-group-item-action disabled"><i class="fas fa-arrow-right">&nbsp;${CategoryVO.category}(0)</i></a>
		  </c:forEach>  
		</div>
		
			
			
</div>


<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>