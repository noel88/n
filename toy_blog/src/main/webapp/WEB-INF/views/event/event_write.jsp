<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

		<form action="event_create" method="get">
	<table  style="margin-left : auto; margin-right : auto; margin-top : 30px; width: 50%;">

		<tr>

				<td colspan="2">
				<div class="form-group">
			      <label>이벤트 제목</label>
			      <input type="text" class="form-control" name = "event_title" placeholder="이벤트 제목을 입력해주세요">
			    </div>
			</td>

		</tr>

		<tr>
			<td>
				<div class="form-group">
			      <label>이벤트 시작날짜</label>
			      <input type="date" class="form-control" name = "event_startDate" >
			    </div>
			</td>
			<td>
			    <div class ="form-group">
			      <label>이벤트 종료날짜</label>
			      <input type="date" class="form-control" name="event_endDate">
			    </div>
    		</td>
		</tr>
		<tr>
			<td colspan="2"><small id="emailHelp" class="form-text text-muted">이벤트 시작날짜와 끝 날짜를 정확히 기입해주세요. 이벤트 페이지는 수정이 불가능합니다.</small></td>
		</tr>

			<tr>
				<td colspan="2">
					<div class="form-group">

						<hr>
						<br>
						<textarea class="editable" rows="70" name="event_content">글을 드래그하면 에디터가 나와 글자를 편집하거나, 이미지를 삽입할수 있습니다.</textarea>
					</div>
				</td>
			</tr>

			<tr>
				<td colspan="2">
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


	</body>
</html>