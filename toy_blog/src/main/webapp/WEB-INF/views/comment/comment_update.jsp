<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>댓글 수정</title>
</head>
 <%@ include file="/WEB-INF/views/include/head.jsp"%>
<body>
<form name = "updatefrm" action="/lxa/comment/comment_update">

<script type="text/javascript">
	function update() {
		document.opener.name = "comment_update"
		document.updatefrm.submit();
	}

</script>



<table class="table" style = "margin-left : auto; margin-right : auto; margin-top : 50px;">

			<tr class="table-secondary">
				<td >

					<textarea style="resize: none; width: 100%; height: 100px;" name = "comment">${my_comment.comment}</textarea>
					<input type ="hidden" name = "post_no" value="${my_comment.post_no}">
					<input type ="hidden" id = "id" name = "comment_no" value="${my_comment.comment_no}">
				</td>
			</tr>
			<tr class="table-secondary">
					<td><button class="btn btn-primary btn-xs" type="submit" onclick ="javascript:update();" style="width:100%;"><i class="fas fa-comment-dots">&nbsp;comment</i></button>&nbsp;</td>
			</tr>
			</table>

</form>


</body>
</html>