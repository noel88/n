<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/include/head.jsp" %>

        <!-- <script src="http://code.jquery.com/jquery-latest.js"></script> -->
</head>
<body>
<%@ include file="/WEB-INF/views/include/nav.jsp" %>
			<script>
				$(function() {
				  var availableTags = [
					  <c:forEach items = "${keyword}" var = "PostVO">
						<c:forEach items="${fn:split(PostVO.keyword, '#')}" var="item">
							"#${item}",
						</c:forEach>
					</c:forEach>

				  ];
				  $( "#tags" ).autocomplete({
				    source: availableTags
				  });
				} );


			</script>
<form action="create" method="post">
<div style="max-width: 1000px; margin-right: auto; margin-left: auto;">
	<table style="margin-left : auto; margin-right : auto; margin-top : 150px; width: 1000px;">
	<tr>
		<td colspan="2">
			<div class="form-group">
				<label for="title">Title</label>
				<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해주세요.">
				<input type="hidden" name="name" value="${sessionScope.name}">
				<input type="hidden" name="blog_no" value="${blog_info}">
			</div>
		</td>

		</tr>
		
		<tr>
		<td style="width: 70%;">
			 <div class="form-group">
    		  <label for="">Category</label>
    			  <select class="form-control" name = "category_no" id="">
				        <option value="0" selected>전체</option>
    			  <c:forEach items="${category}" var = "CategoryVO">
				        <option value = "${CategoryVO.category_no}">${CategoryVO.category}</option>
    			  </c:forEach>
			      </select>
    		</div>
		</td>
		<td>
			 <div class="form-group">
    		  <label for="">공개여부</label>
    			  <select class="form-control" name = "public_yn" id="">
				        <option value="public">공개</option>
				        <option value="private">비공개</option>
				        <option value="protect">구독자용공개</option>
			      </select>
    		</div>
		</td>


		</tr>
		
		
		
		
		
			<tr>
				<td colspan="2">
					<div class="form-group">
						<label for="exampleTextarea">write</label>
						<hr>
						<br>
						<textarea class="editable" name="context">글을 드래그하면 에디터가 나와 글자를 편집하거나, 이미지를 삽입할수 있습니다.</textarea>
					</div>
				</td>
			</tr>
			<!-- <tr>
			<td> <div id="fileUpload" class="dragAndDropDiv">블로그 메인 이미지를 넣어주세요.</div></td>
			</tr> -->


			<tr>
				<td colspan="2">
					<div class="form-group">
						<label for="">keyword</label>
						<input type="text" class="form-control" name="keyword" id ="tags" placeholder="해쉬태그를 이용하여 키워드를 입력해주세요">
					</div>
				</td>

			</tr>
			<tr>
				<td colspan="2">
					<button type="submit" style="margin-left: auto; margin-right: auto; width: 100%;" class="btn btn-primary"><i class="fas fa-pen">&nbsp;Write</i></button>
				</td>
			</tr>

			<tr style="height: 70px;">
			</tr>

			</table>
		</div>
		</form>
		<script src="<c:url value="../resources/js/medium-editor.js"/>"></script>


		<script>
        var editor = new MediumEditor('.editable', {
            buttonLabels: 'fontawesome',
            toolbar: {
      		buttons: ['bold', 'italic', 'anchor', 'quote', 'pre', 'image', 'underline', 'h1', 'h2', 'h3', 'h4',
      			'orderedlist', 'unorderedlist', 'indent', 'outdent', 'justifyLeft', 'justifyCenter', 'justifyRight' ]}
        }),
        cssLink = document.getElementById('medium-editor-theme');

  	  </script>

     <br>
     <br>
		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	</body>
</html>