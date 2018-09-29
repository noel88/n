<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
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
<style type="text/css">
#contents {
	max-width: 780px;
	margin: 0 auto;
	text-align: center;
	padding-bottom: 50px;
}
.ad {
	text-align: center;
	border: 1px dotted #ccc;
	max-width: 780px;
	margin: 0 auto 6rem;
}
a.btn {
	background: #59b1eb;
	color: #fff;
	border: none;
	position: relative;
	height: 60px;
	font-size: 108%;
	padding: .6em 1em;
	transition: 800ms ease all;
	outline: none;
}
a.btn:before, a.btn::after {
	content: '';
	position: absolute;
	top: 0;
	right: 0;
	height: 2px;
	width: 0;
	background: #131414;
	transition: 400ms ease all;
}
a.btn::after {
	right: inherit;
	top: inherit;
	left: 0;
	bottom: 0;
}
a.btn:hover:before, a.btn:hover::after {
	width: 100%;
	transition: 800ms ease all;
}
.js-load {
	display: none;
}
.js-load.active {
	display: block;
}
.is_comp.js-load:after {
	display: none;
}
.btn-wrap, .lists, .main {
	display: block;
}
.main {
	max-width: 640px;
	margin: 0 auto;
}
.lists {
 	margin-bottom: 4rem;
}
.lists__item {
	padding: 20px;
/* 	background: #EEE; */
}
.lists__item:nth-child(2n) {
/* 	background: #59b1eb; */
/* 	color: #fff; */
}
.btn-wrap {
	text-align: center;
}
.button {
	display: inline-block;
	width: 200px;
	height: 54px;
	text-align: center;
	text-decoration: none;
	line-height: 54px;
	outline: none;
	position: relative;
	z-index: 2;
 	background-color: #333;
	border: 2px solid #333;
 	color: #fff;
	line-height: 50px;
	margin-bottom: 4rem;
}
.button:hover {
	background-color: #fff;
	border-color: #131414;
	color: #131414;
}
.button::before,
.button::after {
	position: absolute;
	z-index: -1;
	display: block;
	content: '';top: 0;
	width: 50%;
	height: 100%;
	background-color: #333;
}
.button,
.button::before,
.button::after {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-transition: all .3s;
	transition: all .3s;
}
.button::before {
	right: 0;
}
.button::after {
	left: 0;
}
.button:hover::before,
.button:hover::after {
	width: 0;
	background-color: #131414;
}
</style>
<script type="text/javascript" src="https://nanati.me/common/js/jquery-1.11.2.min.js"></script>
</head>
<body>

<%@ include file="/WEB-INF/views/include/nav.jsp" %>
<h1 style="margin-top: 30px;"> Your stories </h1>
<div style=" margin-left : auto; margin-right : auto; width: 70%; ">
	<ul class="nav nav-tabs">
		<li class="nav-item">
		<a class="nav-link active show" data-toggle="tab" href="#post">Post</a>
		</li>
		<li class="nav-item">
		<a class="nav-link" data-toggle="tab" href="#comment_my">Comment</a>
		</li>
		<li class="nav-item">
		<a class="nav-link" data-toggle="tab" href="#profile">Profile</a>
		</li>
		<li class="nav-item">
		<a class="nav-link disabled" href="#">Disabled</a>
		</li>
	</ul>
	<script type="text/javascript">
$(window).on('load', function () {
	load('#js-load', '4');
	$("#js-btn-wrap .button").on("click", function () {
		load('#js-load', '4', '#js-btn-wrap');
	})
});
function load(id, cnt, btn) {
	var girls_list = id + " .js-load:not(.active)";
	var girls_length = $(girls_list).length;
	var girls_total_cnt;
	if (cnt < girls_length) {
		girls_total_cnt = cnt;
	} else {
		girls_total_cnt = girls_length;
		$('.button').hide()
	}
	$(girls_list + ":lt(" + girls_total_cnt + ")").addClass("active");
}
	</script>
	<div id="myTabContent" class="tab-content">
		<!-- 내가 쓴 게시물 보기 -->
		<div class="tab-pane fade active show" id="post">
			<div id="contents">
				<div id="js-load">
					<ul class="lists" style="margin-left : auto; margin-right : auto; margin-top : 30px; width: 90%;">
						<c:forEach items = "${my}" var = "BlogVO">
						<li class="lists__item js-load">
						<h3 style="text-align: left;"><a href="/blog/detail?no=${BlogVO.no}">${BlogVO.title}</a></h3>
						<span><button>update</button>&nbsp;<button>delete</button></span>
						<span style="float: right;">${BlogVO.now}&nbsp;<i class="fas fa-eye">&nbsp;${BlogVO.cnt}</i>&nbsp;&nbsp;&nbsp;<i class="fas fa-comment-dots">&nbsp;${BlogVO.comment_Cnt}</i>&nbsp; <i class="fas fa-heart">like</i></span>
						</li>
						</c:forEach>
					
					</ul>
				</div>
				<br>
				<div id="js-btn-wrap" class="btn-wrap">
					<a href="javascript:;" class="button">more</a>
				</div>
			</div>
		</div>
		<!-- 내가 쓴 댓글 보기 -->
		<div class="tab-pane fade show" id="comment_my">
			 <table class="table" style = "margin-left : auto; margin-right : auto; margin-top : 30px; width: 70%;">
			<c:forEach items="${my_comment}" var="JoinVO">
			<tr>
				<td style="text-align: left;">
					<h3>
					  <i class="fas fa-clipboard-list"><a href="/blog/detail?no=${JoinVO.no}">${JoinVO.title}</a></i>
					</h3>
				</td>
				
			</tr>
			<tr>
				<td colspan="2" style="width: 750px; text-align: left;">
						<span style="float: left;"><i class="fas fa-angle-double-right">${JoinVO.comment}</i></span>
			 	</td>
			</tr>
			</c:forEach>
			<tr style="height: 70px;">
  			  </tr>

   			</table>
					
						
				
				
			
		</div>
		<!-- 회원정보 수정 -->		
		<div class="tab-pane fade show" id="profile">
			<script type="text/javascript">
				function validate() {
					alert('수정이 완료되었습니다.');
				}
				function validate_delete() {
					alert('탈퇴가 완료되었습니다.');
				}
			</script>
			<form action="update" method="post" onsubmit="return validate()">
				<table style="margin-left : auto; margin-right : auto; margin-top : 30px; width: 70%;">
				<tr>
					<td>
						<div class="form-group">
							<label for="exampleInputname1">Name</label>
							<input type="text" class="form-control name" name="user_name" placeholder="Name" oninput="checkName()" id="checkname" autofocuss>
							<small id="emailHelp" class="form-text text-muted">Please enter a name for your blog.</small>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label>
							<input type="password" class="form-control pass" name="user_pwd" placeholder="Password" oninput="checkPwd()">
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label>
							<input type="password" class="form-control pass" name="user_pwdcheck" placeholder="Password" id="repwd" oninput="checkPwd()">
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<button type="submit" class="btn btn-primary signupbtn" disabled="disabled"><i class="fas fa-edit">&nbsp;update</i></button>
						<a href="/delete"><button type="button" class="btn btn-primary" style="float: right;" onclick="validate_delete();"><i class="fas fa-trash-alt">&nbsp;delete</i></button></a>
					</td>
				</tr>
				</table>
			</form>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>