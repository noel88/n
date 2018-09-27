<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <link href="<c:url value="/resources/css//bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css//bootstrap.min.css" />" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
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





<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="/">한글 테스트</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarColor02">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About</a>
      </li>
<c:choose>
	<c:when test = "${sessionScope.name == null}">
      <li class="nav-item">
        <a class="nav-link" href="/user/join">Start</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/user/login">Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/blog/list">List</a>
      </li>
 </c:when>
      <c:otherwise>
      <li class="nav-item">
        <a class="nav-link" href="/blog/list">List</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/blog/write">Write</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="/user/page">${sessionScope.name}, page</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/user/logout">Logout</a>
      </li>

         </c:otherwise>
</c:choose>
    </ul>

  </div>
</nav>

<script type="text/javascript">

	function validate() {
		alert('회원가입이 완료되었습니다. 더 많은 서비스 사용을 위해 이메일 인증을 해주세요');
	}

</script>


<form action = "joinAction" method="post" onsubmit = "return validate()">
<table style = "margin-left : auto; margin-right : auto; margin-top : 30px;">


	<tr>
   		<td><div class="form-group">
      <label for="exampleInputname1">Name</label>
      <input type="text" class="form-control name" name = "user_name" placeholder="Name" oninput="checkName()" style="width: 320px;" id="checkname" autofocuss>
      <small id="emailHelp" class="form-text text-muted">Please enter a name for your blog.</small>
    </div></td>
   	</tr>

  	<tr>
  		<td> <div class="form-group">
      <label for="exampleInputPassword1">Password</label>
      <input type="password" class="form-control pass" name = "user_pwd" placeholder="Password" oninput="checkPwd()" style="width: 320px;">
    </div></td>

  	</tr>

  	<tr>
  		<td> <div class="form-group">
      <label for="exampleInputPassword1">Password</label>
      <input type="password" class="form-control pass" name = "user_pwdcheck" placeholder="Password"  id="repwd" oninput="checkPwd()" style="width: 320px;">
    </div></td>

  	</tr>

	<tr>
	<td>  <div class="form-group">
      <label for="exampleInputEmail1">Email address</label>
      <input type="email" class="form-control email" name="user_email" placeholder="Email" oninput="checkEmail()" style="width: 320px;" id="checkaa" autofocus>
      <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    </div></td>
	</tr>


    <tr>
    	<td><button type="submit" class="btn btn-primary signupbtn"  disabled="disabled">Join</button></td>
    </tr>




</table>

</form>
</body>
</html>