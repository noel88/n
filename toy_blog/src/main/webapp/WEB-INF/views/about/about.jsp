<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/views/include/head.jsp"%>
</head>
<body>

<%@ include file="/WEB-INF/views/include/nav.jsp"%>

<div style="max-width: 1000px; margin-right: auto; margin-left: auto;">

<div style="margin-left: auto; margin-right: auto; text-align:center; margin-top: 50px; margin-bottom: 20px;">


	<h2><p class="mb-0">A B O U T </p></h2>

</div>

<div style=" margin-left : auto; margin-right : auto; ">
	<ul class="nav nav-tabs">
		<li class="nav-item">
		<a class="nav-link active show" data-toggle="tab" href="#aa">요구사항정의서</a>
		</li>
		<li class="nav-item">
		<a class="nav-link" data-toggle="tab" href="#bb">진행과정</a>
		</li>
		<li class="nav-item">
		<a class="nav-link" data-toggle="tab" href="#cc">Profile</a>
		</li>
		<li class="nav-item">

	</ul>
	
		<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade active show" id="aa">
			<div style="margin-top: 30px; margin-bottom: 100px;">
			

				<p class="text-primary">1. 회원가입</p>
				
				<p class="text-primary">&nbsp;&nbsp;&nbsp;1-1. <del>회원가입은 이름, 비밀번호, 이메일을 받는다. (이름은 아이디, 이메일은 인증받기 위해 받음)</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;1-2. <del>이름과 이메일은 중복될수 없다. 실시간으로 확인해야 함.</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;1-3. <del>패스워드는 처음 입력, 패스워드 확인으로 실시간으로 틀렸는지 확인 가능해야 한다.</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;1-4. <del>모든 조건이 충족되면 회원가입 버튼 활성화 </del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;1-5. <del>회원가입후에는 이메일 인증 팝업.</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;1-6. 회원가입과 동시에 블로그 자동 개설됨.</p>
				
				<p class="text-primary">2. 인증</p>
				
				<p class="text-primary">&nbsp;&nbsp;&nbsp;2-1. <del>비회원은 글목록, 회원가입, 이벤트게시판, 로그인, 소개페이지에 들어갈수 있다.</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;2-2. <del>비회원 제한사항 : 글쓰기, 글 수정, 글 삭제, 나의 블로그 기능, 댓글, 좋아요 등. 비회원이 버튼을 클릭했을때는 로그인 창으로 이동</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;2-3. <del>회원은 모든 기능을 이용할수 있으나, 이벤트 등록은 관리자만 가능하다.</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;2-4. <del>이벤트 참여는 이메일 인증 회원만 가능하다.</del></p>
				
				<p class="text-primary">3. 로그인</p>
				
				<p class="text-primary">&nbsp;&nbsp;&nbsp;3-1. <del>로그인을 하면 이름이 세션에 유지되어 내 이름으로 된 블로그 메뉴를 볼수 있음.</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;3-2. 비밀번호를 잊었을때는 비밀번호 재발급으로 임시 비밀번호를 이메일로 발급 받을수 있다. (이메일 인증 회원만 가능하다)</p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;3-3. SSL 기능</p>
				
				<p class="text-primary">4. 로그아웃</p>
				
				<p class="text-primary">5. 블로그 기본 기능</p>
				
				<p class="text-primary">&nbsp;&nbsp;&nbsp;5-1. <del>전체 글 목록에선 최근 순으로 모든 글을 볼수 있다.</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;5-2. <del>상대방 이름을 클릭하면 상대방 블로그 페이지로 이동 가능하다.</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;5-3. <del>상대방 글을 보고 좋아요 버튼이나, 댓글을 남길수 있다.</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;5-4. 불건전한 글이나, 스팸성 글이 있으면 신고할수 있다. (신고하면 게시글이 관리자 이메일로 감, or 추가로 글 블락 처리)</p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;5-5. <del>좋아요는 글당 하나씩만 선택 가능하고</del>, 댓글의 댓글도 남길수 있다.</p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;5-6. 댓글에도 좋아요, 싫어요, 신고하기 기능이 있다.(신고하면 댓글이 관리자 이메일로 감, or 추가로 댓글 블락 처리)</p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;5-7. <del>블로그 글을 작성할수 있다.</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;5-8. 블로그에는 이미지 업로드가 가능하고, 올리고 글쓸때 이미지 확인하게끔</p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;5-9. <del>자신의 글은 수정하거나 삭제할수 있다.</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;5-10. 상대방에게 구독 신청을 하면 실시간으로 상대방의 글을 내 블로그페이지에서 확인 가능하다.</p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;5-11. <del>블로그 글 작성란에는 텍스트 에디터가 있다.</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;5-12. <del>블로그 글 작성란에 해쉬태그를 입력할수 있다. (해쉬태그 입력란은 자동완성 기능 제공)</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;5-13. <del>글 목록에는 제목, 내용, 조회수, 작성일, 댓글수, 좋아요 수 가 노출되어야 한다.</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;5-14. 글을 삭제하게 되면 전체 댓글도 지워져야 한다.</p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;5-15. <del>글의 공개여부가 따로 존재한다. 공개, 비공개, 구독자에게만 공개</del></p>

				 
				<p class="text-primary">6. 이벤트</p>
				
				<p class="text-primary">&nbsp;&nbsp;&nbsp;6-1. 이벤트는 관리자가 총 관리 한다.</p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;6-2. <del>이벤트 등록은 관리자가 직접 등록한다.</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;6-3. 이벤트 종료가 되면 자동으로 글을 클릭해서 볼수 없게 한다.</p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;6-4. <del>이벤트 참여는 클릭으로 이루어진다.</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;6-5. <del>이벤트 참여는 이벤트 1개당 한번만 가능하다.</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;6-6. 이벤트 결과는 메일로 당첨소식 알리기</p>
				 
				<p class="text-primary">7. 나의 블로그</p>
				
				<p class="text-primary">&nbsp;&nbsp;&nbsp;7-1. <del>나의 블로그에는 내 전체글을 따로 모아서 볼수 있다.</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;7-2. 블로그에서는 오늘 내 글에 댓글을 단 사람 수, 오늘 좋아요 수, 총 게시물 수, 총 좋아요 수, 총 구독수가 표시된다.</p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;7-3. 블로그에서는 블로그 제목, 블로그 한줄소개, 메인 이미지 편집이 가능하다.</p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;7-4. 블로그에서 구독하는 블로거의 글을 받아볼수 있다.</p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;7-5. 블로그에서 내가 단 댓글의 게시물을 볼수 있다.</p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;7-6. 카테고리별로 글을 분류할수 있다 (네이버 블로그 게시판 같은 기능)</p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;7-7. <del>내 정보를 수정하거나 탈퇴할수 있다.</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;7-8. 내가 이메일 인증 사용자인지, 미인증 사용자인지 표시해준다.</p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;7-9. 프로필 사진이나, 블로그 메인 사진, 블로그 소개, 내 소개등 수정하거나 추가할수 있다.</p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;7-10. 카테고리는 사용자 마음대로 실시간 추가 가능하다.</p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;7-11. 카테고리 또한 공개 여부를 설정할수 있다.</p>
				
				<p class="text-primary">8. 검색</p>
				
				<p class="text-primary">&nbsp;&nbsp;&nbsp;8-1. <del>검색 자동 완성 기능.</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;8-2. <del>검색 자동 완성에는 제목, 작성자, 키워드가 나온다.</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;8-3. <del>검색하면 검색 페이지로 넘어가서 제목별/글내용/작성자 순으로 분류하여 보여준다.</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;8-4. <del>검색단어는 하이라이트 표시함</del></p>
				
				<p class="text-primary">9. 관리자</p>
				
				<p class="text-primary">&nbsp;&nbsp;&nbsp;9-1. 관리자는 이벤트 총 관리한다.</p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;9-2. <del>관리자 페이지가 따로 존재한다.</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;9-3. 관리자 페이지에는 이벤트 등록, 유저 목록, 신고된 게시물 목록을 볼수 있다.</p>
				
				<p class="text-primary">10. 소개페이지</p>
				
				<p class="text-primary">&nbsp;&nbsp;&nbsp;10-1. <del>소개페이지는 대화형식이나 QNA 혹은 기본 요구사항 기술서를 올릴 예정.</del></p>
				
				<p class="text-primary">11. 메인페이지</p>
				
				<p class="text-primary">&nbsp;&nbsp;&nbsp;11-1. 블로그 글 노출을 어떤 방향으로 할지 생각해볼것. [지저분하지 않을 방법 찾기]</p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;11-2. <del>검색창 크게</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;11-3. <del>키워드 빈도수별로 순서대로 나오고 키워드를 클릭하면 키워드만 따로 모아놓은 페이지로 이동한다.</del></p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;11-4. 키워드 클릭하여 이동한 페이지에 키워드 하이라이트 기능.</p>
				<p class="text-primary">&nbsp;&nbsp;&nbsp;11-5. 키워드 실시간 업데이트 [00:00분 기준]</p>
				
				<p class="text-primary">12. 기타</p>
				
				<p class="text-primary">&nbsp;&nbsp;&nbsp;12-1. 홈페이지 다국어 지원</p>
				
			</div>
			</div>
			<div class="tab-pane fade show" id="bb">
			
			<table class="table table-hover" style="margin-top: 50px; margin-bottom: 100px;">
	   
			    <tr class="table-secondary">
			      <th style="width: 20%;">날짜</th>
			      <th style="width: 60%;">내용</th>
			      <th style="width: 20%;">구현유무</th>
			    </tr>
			    <tr class="table-secondary">
			      <th style="width: 20%;">2018.09.17</th>
			      <th style="width: 60%;">아이디어 정리</th>
			      <th style="width: 20%;">O</th>
			    </tr>
			    <tr class="table-secondary">
			      <th style="width: 20%;">2018.09.18</th>
			      <th style="width: 60%;">spring 환경설정 및 전체적인 화면 레이아웃</th>
			      <th style="width: 20%;">O</th>
			    </tr>
			    <tr class="table-secondary">
			      <th style="width: 20%;">2018.09.19</th>
			      <th style="width: 60%;">user 회원가입, 로그인, 인증세션 및 화면 view캡처 정리</th>
			      <th style="width: 20%;">O</th>
			    </tr>
			    <tr class="table-secondary">
			      <th style="width: 20%;">2018.09.20</th>
			      <th style="width: 60%;">web.xml 수정, 글쓰기 후 db 연동 확인, db 글 목록, 내 블로그 페이지 초안 작업중</th>
			      <th style="width: 20%;">O</th>
			    </tr>
			    <tr class="table-secondary">
			      <th style="width: 20%;">2018.09.21</th>
			      <th style="width: 60%;">request.post 일때 한글깨짐 수정, 이메일 인증</th>
			      <th style="width: 20%;">O</th>
			    </tr>
			    <tr class="table-secondary">
			      <th style="width: 20%;">2018.09.27</th>
			      <th style="width: 60%;">ajax 이름, 이메일 중복확인 및 비밀번호 재입력 확인, list 더보기 기능 구현, 게시물 상세보기 페이지 및 인증후 테이블 업데이트, 조회수 증가</th>
			      <th style="width: 20%;">O</th>
			    </tr>
			    <tr class="table-secondary">
			      <th style="width: 20%;">2018.09.28</th>
			      <th style="width: 60%;">게시판 기본 CRUD구현, jsp정리, 블로그 페이지 구현</th>
			      <th style="width: 20%;">O</th>
			    </tr>
			    <tr class="table-secondary">
			      <th style="width: 20%;">2018.09.29</th>
			      <th style="width: 60%;">게시판 기본 CRUD, 게시물 댓글 달기, 댓글 개수 확인, mypage</th>
			      <th style="width: 20%;">O</th>
			    </tr>
			    <tr class="table-secondary">
			      <th style="width: 20%;">2018.09.30</th>
			      <th style="width: 60%;">주석 처리 및 코드 정리 1차</th>
			      <th style="width: 20%;">O</th>
			    </tr>
			    <tr class="table-secondary">
			      <th style="width: 20%;">2018.10.01</th>
			      <th style="width: 60%;">비회원은 comment, like 누르면 로그인 페이지로 이동.like버튼 누르면 카운트 증가, 목록 및 상세페이지 카운트 노출, 댓글 등록, like 누르면 상세 페이지 그대로 유지,게시물 지워지지 않는 현상 해결,에러사항 페이지 만들기</th>
			      <th style="width: 20%;">O</th>
			    </tr>
			    <tr class="table-secondary">
			      <th style="width: 20%;">2018.10.04</th>
			      <th style="width: 60%;">모바일 viewport 수정, nav 수정, DB서버 옮김. path수정</th>
			      <th style="width: 20%;">O</th>
			    </tr>
			    <tr class="table-secondary">
			      <th style="width: 20%;">2018.10.05</th>
			      <th style="width: 60%;">이벤트 페이지, admin페이지, 메인페이지 레이아웃, max-width수정</th>
			      <th style="width: 20%;">O</th>
			    </tr>
			    <tr class="table-secondary">
			      <th style="width: 20%;">2018.10.10</th>
			      <th style="width: 60%;">화면설계 초안, 테이블 정의서, 기능구현 정리, 수정해야 할 부분 피드백 진행</th>
			      <th style="width: 20%;">O</th>
			    </tr>
			    <tr class="table-secondary">
			      <th style="width: 20%;">2018.10.11</th>
			      <th style="width: 60%;">검색기능 구현, 이벤트 페이지 인원수 표기, 회원 탈퇴 수정, 검색구현 페이지 수정, 이메일 인증 주소 수정, 검색 자동 완성 및 메인 레이아웃, 다국어 지원 진행</th>
			      <th style="width: 20%;">O</th>
			    </tr>
			 
			</table>
			
			
			</div>
			<div class="tab-pane fade show" id="cc">
			</div>
		</div>
</div>



	
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>