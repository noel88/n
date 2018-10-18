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
<div style="max-width: 1000px; margin-right: auto; margin-left: auto; margin-top: 100px;">

<div style="margin-left: auto; margin-right: auto; text-align:center; margin-top: 50px; margin-bottom: 20px;">


	<h2><p class="mb-0">L O G I N</p></h2>

</div>

<form action = "loginAction">
<table style = "margin-left : auto; margin-right : auto; margin-top : 10px; width:100%; margin-bottom: 100px;">


	<tr>
   		<td><div class="form-group">
      <label for="exampleInputname1"><spring:message code="login.name"/></label>
      <input type="text" class="form-control" name = "user_name" id="exampleInputPassword1" placeholder="<spring:message code="login.name.placeholder"/>">
      <small id="emailHelp" class="form-text text-muted">Please enter a name for your blog.</small>
    </div></td>

   	</tr>

  	<tr>

  		<td> <div class="form-group">
      <label for="exampleInputPassword1"><spring:message code="login.password"/></label>
      <input type="password" class="form-control" name = "user_pwd" id="exampleInputPassword1" placeholder="<spring:message code="login.password.placeholder"/>">
    </div></td>

  	</tr>

    <tr>
    	<td><button type="submit" style = "float:left;" class="btn btn-primary"><i class="fas fa-angle-right">&nbsp; Login</i></button><button type="button" style = "float:right;" class="btn btn-primary"><i class="fas fa-angle-right">&nbsp; Forget</i></button></td>
    </tr>



</table>

</form>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>