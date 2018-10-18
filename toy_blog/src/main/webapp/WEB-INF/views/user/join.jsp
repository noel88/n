<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/views/include/head.jsp"%>
</head>





<script type="text/javascript">

//아이디와 비밀번호가 맞지 않을 경우 가입버튼 비활성화를 위한 변수설정

var idCheck = 0;
var pwdCheck = 0;
var nameCheck = 0;

//가입버튼 비활성화, 중복확인.

function checkEmail() {
   var inputed = $('.email').val();
   console.log(inputed);
    $.ajax({
        data : {
            user_email : inputed
        },
        url : "emailCheck",
        success : function(data) {
            if(inputed=="" && data=='0') {
                $(".signupbtn").prop("disabled", true);
                $(".signupbtn").css("background-color", "#aaaaaa");
                $("#checkaa").css("background-color", "#FFCECE");
                idCheck = 0;
            } else if (data == '0') {
                $("#checkaa").css("background-color", "#fcfadb");
                idCheck = 1;
                if(idCheck==1 && pwdCheck == 1) {
                    $(".signupbtn").prop("disabled", false);
                    $(".signupbtn").css("background-color", "#ff7777");
                }
            } else if (data == '1') {
                $(".signupbtn").prop("disabled", true);
                $(".signupbtn").css("background-color", "#aaaaaa");
                $("#checkaa").css("background-color", "#FFCECE");
                idCheck = 0;
            }
        }
    });
}

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
                if(idCheck==1 && pwdCheck == 1 && nameCheck == 1) {
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
        if(idCheck==1 && pwdCheck == 1) {
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
<div style="max-width: 1000px; margin-right: auto; margin-left: auto; margin-top: 100px; ">

<div style="margin-left: auto; margin-right: auto; text-align:center; margin-top: 50px; margin-bottom: 20px;">


	<h2><p class="mb-0">J O I N</p></h2>

</div>


<script type="text/javascript">

	function validate() {
		alert('회원가입이 완료되었습니다. 더 많은 서비스 사용을 위해 이메일 인증을 해주세요');
	}

</script>

<form action = "joinAction" method="post" onsubmit = "return validate()">
<table style = "margin-left : auto; margin-right : auto; margin-top : 10px; width:100%; margin-bottom: 100px;">


	<tr>
   		<td><div class="form-group">
      <label for="exampleInputname1">Name</label>
      <input type="text" class="form-control name" name = "user_name" placeholder="Name" oninput="checkName()" id="checkname" autofocuss>
      <small id="emailHelp" class="form-text text-muted">Please enter a name for your blog.</small>
    </div></td>
   	</tr>

  	<tr>
  		<td> <div class="form-group">
      <label for="exampleInputPassword1">Password</label>
      <input type="password" class="form-control pass" name = "user_pwd" placeholder="Password" oninput="checkPwd()">
    </div></td>

  	</tr>

  	<tr>
  		<td> <div class="form-group">
      <label for="exampleInputPassword1">Password</label>
      <input type="password" class="form-control pass" name = "user_pwdcheck" placeholder="Password"  id="repwd" oninput="checkPwd()">
    </div></td>

  	</tr>

	<tr>
	<td>  <div class="form-group">
      <label for="exampleInputEmail1">Email address</label>
      <input type="email" class="form-control email" name="user_email" placeholder="Email" oninput="checkEmail()" id="checkaa" autofocus>
      <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    </div></td>
	</tr>


    <tr>
    	<td><button type="submit" class="btn btn-primary signupbtn"  disabled="disabled"><i class="fas fa-angle-right">&nbsp; Join</i></button></td>
    </tr>




</table>

</form>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>