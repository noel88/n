<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/include/head.jsp" %>

</head>
<body>
<%@ include file="/WEB-INF/views/include/nav.jsp" %>
<form action="create" method="post">
	<table style="margin-left : auto; margin-right : auto; margin-top : 30px; width: 50%;">
	<tr>
		<td>
			<div class="form-group">
				<label for="title">Title</label>
				<input type="text" class="form-control" name="title" id="title" placeholder="Title">
			</div>
		</td>
	</tr>
	<tr>
		<tr>
			<td>
				<div class="form-group">
					<label for="name">Name</label>
					<input type="text" class="form-control" name="name" id="name" value="${sessionScope.name}" readonly="readonly">
					<input type="hidden" name="blog_name" value="${sessionScope.name}">
				</div>
			</td>
		</tr>
			<tr>
				<td>
					<div class="form-group">
						<label for="exampleTextarea">write</label>
						<hr>
						<br>
						<textarea class="editable" rows="70" name="context"></textarea>
					</div>
				</td>
			</tr>
			<!-- <tr>
			<td> <div id="fileUpload" class="dragAndDropDiv">블로그 메인 이미지를 넣어주세요.</div></td>
			</tr> -->
			<tr>
				<td>
					<button type="submit" style="margin-left: auto; margin-right: auto;" class="btn btn-primary"><i class="fas fa-pen">&nbsp;Write</i></button>
				</td>
			</tr>

			<tr style="height: 70px;">
			</tr>

			</table>
		</form>
		<script src="<c:url value="../resources/js/medium-editor.js"/>"></script>
        <script src="http://code.jquery.com/jquery-latest.js"></script>

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