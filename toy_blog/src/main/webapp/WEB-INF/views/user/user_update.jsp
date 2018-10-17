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
<script type="text/javascript">
//아이디와 비밀번호가 맞지 않을 경우 가입버튼 비활성화를 위한 변수설정
var pwdCheck = 0;
var nameCheck = 0;
//가입버튼 비활성화, 중복확인.
function checkName() {
   var inputed = $('.name').val();
   console.log(inputed);
    $.ajax({
        data : {
            user_name : inputed
        },
        url : "nameCheck",
        success : function(data) {
            if(inputed=="" && data=='0') {
                $(".signupbtn").prop("disabled", true);
                $(".signupbtn").css("background-color", "#aaaaaa");
                $("#checkname").css("background-color", "#FFCECE");
                nameCheck = 0;
            } else if (data == '0') {
                $("#checkname").css("background-color", "#fcfadb");
                nameCheck = 1;
                if(pwdCheck == 1 && nameCheck == 1) {
                    $(".signupbtn").prop("disabled", false);
                    $(".signupbtn").css("background-color", "#ff7777");
                }
            } else if (data == '1') {
                $(".signupbtn").prop("disabled", true);
                $(".signupbtn").css("background-color", "#aaaaaa");
                $("#checkname").css("background-color", "#FFCECE");
                nameCheck = 0;
            }
        }
    });
}
//재입력 비밀번호 체크하여 가입버튼 비활성화 또는 맞지않음을 알림.
function checkPwd() {
    var inputed = $('.pass').val();
    var reinputed = $('#repwd').val();
    console.log(inputed);
    console.log(reinputed);
    if(reinputed=="" && (inputed != reinputed || inputed == reinputed)){
        $(".signupbtn").prop("disabled", true);
        $(".signupbtn").css("background-color", "#aaaaaa");
        $("#repwd").css("background-color", "#FFCECE");
    }
    else if (inputed == reinputed) {
        $("#repwd").css("background-color", "#fcfadb");
        pwdCheck = 1;
        if(pwdCheck == 1) {
            $(".signupbtn").prop("disabled", false);
            $(".signupbtn").css("background-color", "#ff7777");
        }
    } else if (inputed != reinputed) {
        pwdCheck = 0;
        $(".signupbtn").prop("disabled", true);
        $(".signupbtn").css("background-color", "#aaaaaa");
        $("#repwd").css("background-color", "#FFCECE");
    }
}
</script>

<body>

<%@ include file="/WEB-INF/views/include/nav.jsp"%>
<div style="max-width: 1000px; margin-right: auto; margin-left: auto; margin-top: 100px;">
<div style="margin-left: auto; margin-right: auto; text-align:center; margin-top: 30px; margin-bottom: 20px;">


	<h2><p class="mb-0"><spring:message code="blog.my"/> </p></h2>

</div>


			<script type="text/javascript">
				function validate() {
					alert('수정이 완료되었습니다.');
				}
				function validate_delete() {
					alert('탈퇴가 완료되었습니다.');
				}
			</script>
			<form action="user_update" method="post" onsubmit="return validate()">
				<table style="margin-left : auto; margin-right : auto; margin-top : 30px; width: 70%;">
				<tr>
					<td>
						<div class="form-group">
							<label for="exampleInputname1"><spring:message code="name"/></label>
							<input type="text" class="form-control name" name="user_name" placeholder="Name" oninput="checkName()" id="checkname" autofocuss>
							<small id="emailHelp" class="form-text text-muted">Please enter a name for your blog.</small>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="form-group">
							<label for="exampleInputPassword1"><spring:message code="pwd"/></label>
							<input type="password" class="form-control pass" name="user_pwd" placeholder="Password" oninput="checkPwd()">
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="form-group">
							<label for="exampleInputPassword1"><spring:message code="pwd"/></label>
							<input type="password" class="form-control pass" name="user_pwdcheck" placeholder="Password" id="repwd" oninput="checkPwd()">
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<button type="submit" class="btn btn-primary signupbtn" disabled="disabled"><i class="fas fa-edit">&nbsp;<spring:message code="update"/></i></button>
						<a href="/lxa/user/delete"><button type="button" class="btn btn-primary" style="float: right;" onclick="validate_delete();"><i class="fas fa-trash-alt">&nbsp;<spring:message code="delete.user"/></i></button></a>
					</td>
				</tr>
				</table>
			</form>
		</div>
	




<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>