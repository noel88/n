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

</head>
<body>

<%@ include file="/WEB-INF/views/include/nav.jsp" %>
<div style="max-width: 1000px; margin-right: auto; margin-left: auto;">
<h1 style="margin-top: 30px;"> ${sessionScope.name}'s blog </h1>
<div style=" margin-left : auto; margin-right : auto; ">
	<ul class="nav nav-tabs">
		<li class="nav-item">
		<a class="nav-link active show" data-toggle="tab" href="#post">Post</a>
		</li>
		<li class="nav-item">
		<a class="nav-link" data-toggle="tab" href="#comment_my">Comment</a>
		</li>
		<li class="nav-item">
		<a class="nav-link" data-toggle="tab" href="#page">구독페이지</a>
		</li>
		<li class="nav-item">
		<a class="nav-link" data-toggle="tab" href="#blog">블로그설정</a>
		</li>
		<li class="nav-item">
		<a class="nav-link" data-toggle="tab" href="#profile">Profile</a>
		</li>
	</ul>

	<div id="myTabContent" class="tab-content">
		<!-- 내가 쓴 게시물 보기 -->
		<div class="tab-pane fade active show" id="post">
		<table style="margin-top: 50px; margin-bottom: 100px; width: 65%; float: left;">
		<c:forEach items = "${my}" var = "PostVO">
			<tr >
				<td>
					<div class="card bg-secondary mb-3" style="width: 100%;">
					  <div class="card-header"><a href="/post/detail?post_no=${PostVO.post_no}">${PostVO.title}</a></div>
					  <div class="card-body">
					  <span class="card-title"><c:out value='${fn:substring(PostVO.now, 0, 19)}'/>&nbsp;<i class="fas fa-eye">&nbsp;${PostVO.cnt}</i>
					  &nbsp;&nbsp;&nbsp;<i class="fas fa-comment-dots">&nbsp;${PostVO.comment_Cnt}</i>&nbsp; <i class="fas fa-heart">&nbsp;${PostVO.like_count}</i></span>
					    <p class="card-text"><c:out value='${fn:substring(PostVO.context.replaceAll("\\\<.*?\\\>",""),0, 150)}' />.. <small class="text-muted"> <i class="fas fa-angle-down"></i> </small></p>
					  </div>
					</div>
				</td>
			</tr>
		</c:forEach>

		</table>

		<ul class="list-group" style="margin-top: 50px; float: right; width: 220px;">
			  <li class="list-group-item d-flex justify-content-between align-items-center">
			    오늘의 새글
			    <span class="badge badge-primary badge-pill">${list_count}</span>
			  </li>
			  <li class="list-group-item d-flex justify-content-between align-items-center">
			    오늘의 댓글
			    <span class="badge badge-primary badge-pill">0</span>
			  </li>
			  <li class="list-group-item d-flex justify-content-between align-items-center">
			    오늘의 좋아요
			    <span class="badge badge-primary badge-pill">0</span>
			  </li>
			  <li class="list-group-item d-flex justify-content-between align-items-center">
			  	<a href= "/lxa/post/write" style="margin-left: auto; margin-right: auto;" class="btn btn-primary"><i class="fas fa-list">글쓰기</i></a>

			  </li>
		</ul>

		<div class="list-group" style="margin-top: 20px; float: right; width: 220px;">
		  <a class="list-group-item list-group-item-action text-info">
		    카테고리 목록
		  </a>
		  <a href="#" class="list-group-item list-group-item-action">Dapibus ac facilisis in
		  </a>
		  <a href="#" class="list-group-item list-group-item-action disabled">Morbi leo risus
		  </a>
		</div>
		



		</div>



		<!-- 내가 쓴 댓글 보기 -->
		<div class="tab-pane fade show" id="comment_my">
			 <table class="table" style = "margin-left : auto; margin-right : auto; margin-top : 30px; width: 70%;">
			<c:forEach items="${my_comment}" var="JoinVO">
			<tr>
				<td style="text-align: left;">
					<h3>
					  <i class="fas fa-clipboard-list"><a href="/post/detail?post_no=${JoinVO.post_no}">${JoinVO.title}</a></i>
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
		
		<!-- 구독페이지 -->
		<div class="tab-pane fade show" id="page">
			구독한 블로그의 글이 온다. or 블로그 제목과 한줄소개 
		</div>

		<!-- 블로그 정보 수정 -->
		<div class="tab-pane fade show" id="blog">
			블로그 제목, 블로그 한줄설명, 블로그 이미지, 
			내 프로필 정보(사진, 한줄소개), 카테고리 설정
			
			<form action="blog" method="post" onsubmit="return validate()">
				<table style=" margin-top : 30px; width: 60%; margin-bottom: 100px; float: left;">
				<tr>
					<td>
						<div class="form-group">
							<label for="exampleInputname1">프로필 사진</label>
							<input type="text" class="form-control" name="blog_title">
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="form-group">
							<label for="exampleInputPassword1">프로필 한줄설명</label>
							<input type="text" class="form-control" name="profile_info" >
						</div>
					</td>
				</tr>
				
				<tr>
					<td>
						<div class="form-group">
							<label for="exampleInputname1">블로그제목</label>
							<input type="text" class="form-control" name="blog_title">
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="form-group">
							<label for="exampleInputPassword1">블로그 한줄설명</label>
							<input type="text" class="form-control" name="blog_info">
						</div>
					</td>
				</tr>
				
				
				
				<tr>
					<td>
						<button type="submit" class="btn btn-primary"><i class="fas fa-edit">&nbsp;update</i></button>
					</td>
				</tr>
				</table>
			</form>
			
			<div class="list-group" style="margin-top: 20px; float: right; width: 350px;">
		  <a class="list-group-item list-group-item-action text-info">
		    카테고리 목록
		  </a>
		  <a href="#" class="list-group-item list-group-item-action">
		  				
							<input type="text" class="form-control" name="blog_info" placeholder="카테고리를 추가해주세요" style=" width:220px; float: left">
						
							<button type="submit" class="btn btn-primary"><i class="fas fa-plus"></i></button>
						
		  </a>
		  <a href="#" class="list-group-item list-group-item-action disabled">카테고리 추가한것 목록
		  </a>
		</div>
		
			
			
			
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
			<form action="user_update" method="post" onsubmit="return validate()">
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
						<a href="/lxa/user/delete"><button type="button" class="btn btn-primary" style="float: right;" onclick="validate_delete();"><i class="fas fa-trash-alt">&nbsp;delete</i></button></a>
					</td>
				</tr>
				</table>
			</form>
		</div>
	
	
	
	
	</div>
</div>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>