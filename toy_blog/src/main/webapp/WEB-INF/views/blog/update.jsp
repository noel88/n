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


<form action= "update" method="get">

   <table style = "margin-left : auto; margin-right : auto; margin-top : 30px; width: 50%;">




   	<tr>
   		<td><div class="form-group">
      <label for="exampleInputname1">Title</label>
      <input type="text" class="form-control" name = "title" id="exampleInputPassword1" placeholder="Title" value="${blogVO.title}">
   	  <input type="hidden" class="form-control" name = "no" value="${blogVO.no}">

    </div></td>
   	</tr>
  	<tr>

   	<tr>
   		<td><div class="form-group">
      <label for="exampleInputname1">Name</label>
      <input type="text" class="form-control" name = "name" id="exampleInputPassword1" value = "${sessionScope.name}" readonly="readonly" >

    </div></td>
   	</tr>

	<tr>
		<td>
		<div class="form-group">
	      <label for="exampleTextarea">Write</label>
		<hr>
		<br>
	      <textarea class="editable" rows="70" name = "context">${blogVO.context}</textarea>
	    </div>
		</td>

	</tr>
    <tr>
    	   	<td><button type="submit" style = "margin-left: auto; margin-right: auto;" class="btn btn-primary"><i class="fas fa-edit">&nbsp;update</i></button></td>
    </tr>
    <tr style="height: 70px;">
    </tr>


   </table>

</form>

    <script src="<c:url value="/resources/js/medium-editor.js"/>"></script>

    <script>
        var editor = new MediumEditor('.editable', {
            buttonLabels: 'fontawesome',
            toolbar: {
      		buttons: ['bold', 'italic', 'anchor', 'quote', 'pre', 'underline', 'h1', 'h2', 'h3', 'h4',
      			'orderedlist', 'unorderedlist', 'indent', 'outdent', 'justifyLeft', 'justifyCenter', 'justifyRight' ]}
        }),
        cssLink = document.getElementById('medium-editor-theme');



    </script>


<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>