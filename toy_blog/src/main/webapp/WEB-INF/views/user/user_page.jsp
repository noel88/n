<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* USER PROFILE PAGE */
 .card {
/*     margin-top: 20px;
    padding: 20px; */
    background-color: rgba(214, 224, 226, 0.2);
     -webkit-border-top-left-radius:5px;
    -moz-border-top-left-radius:5px;
    border-top-left-radius:5px;
    -webkit-border-top-right-radius:5px;
    -moz-border-top-right-radius:5px;
    border-top-right-radius:5px;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.card.hovercard {
    position: relative;
    padding-top: 0;
    overflow: hidden;
    text-align: center;
    background-color: #fff;
    background-color: rgba(255, 255, 255, 1);
}
.card.hovercard .card-background {
    height: 130px;
}
.card-background img {
    -webkit-filter: blur(25px);
    -moz-filter: blur(25px);
    -o-filter: blur(25px);
    -ms-filter: blur(25px);
    filter: blur(25px);
    margin-left: -100px;
    margin-top: -200px;
    min-width: 130%;
}
.card.hovercard .useravatar {
    position: absolute;
    top: 15px;
    left: 0;
    right: 0;
}
.card.hovercard .useravatar img {
    width: 100px;
    height: 100px;
    max-width: 100px;
    max-height: 100px;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    border-radius: 50%;
    border: 5px solid rgba(255, 255, 255, 0.5);
}
.card.hovercard .card-info {
    position: absolute;
    bottom: 14px;
    left: 0;
    right: 0;
}
.card.hovercard .card-info .card-title {
    padding:0 5px;
    font-size: 20px;
    line-height: 1;
    color: #262626;
    background-color: rgba(255, 255, 255, 0.1);
    -webkit-border-radius: 4px;
    -moz-border-radius: 4px;
    border-radius: 4px;
}
.card.hovercard .card-info {
    overflow: hidden;
    font-size: 12px;
    line-height: 20px;
    color: #737373;
    text-overflow: ellipsis;
}
.card.hovercard .bottom {
    padding: 0 20px;
    margin-bottom: 17px;
}
.btn-pref .btn {
    -webkit-border-radius:0 !important;
}

.single {
padding: 30px 15px;
margin-top: 0px;
background: #fcfcfc;
border: 1px solid #f0f0f0; }
.single h3.side-title {
margin: 0;
margin-bottom: 10px;
padding: 0;
font-size: 20px;
color: #333;
text-transform: uppercase; }
.single h3.side-title:after {
content: '';
width: 80px;
height: 1px;
background: #ff173c;
display: block;
margin-top: 6px; }

.single ul {
margin-bottom: 0; }
.single li a {
color: #666;
font-size: 14px;
text-transform: uppercase;
border-bottom: 1px solid #f0f0f0;
line-height: 40px;
display: block;
text-decoration: none; }
.single li a:hover {
color: #ff173c; }
.single li:last-child a {
border-bottom: 0; }

</style>
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
<style>
            .round {
                border-radius: 50%;
                overflow: hidden;
                width: 50px;
                height: 50px;
            }
            .round img {
                display: block;
            /* Stretch
                  height: 100%;
                  width: 100%; */
            min-width: 100%;
            min-height: 100%;
            }
</style>
</head>
<body>

<%@ include file="/WEB-INF/views/include/side_nav.jsp" %>
<div style="max-width: 1000px; margin-right: auto; margin-left: auto; margin-top: 100px;">

		<c:choose>
		<c:when test="${list_all_count == 0}">
		<table style="margin-top: 30px; margin-bottom: 100px; width: 70%; float: left;">
			<tr >
				<td>
					<div class="card bg-secondary mb-3" style="width: 100%;">
					  <div class="card-header"></div>
					  <div class="card-body">
					  <span class="card-title">
					 </span>
					    <p class="card-text">내용이 없습니다. </p>
					  </div>
					</div>
				</td>
			</tr>
		</table>
		</c:when>
		<c:otherwise>
		<table style="margin-top: 30px; margin-bottom: 100px; width: 100%;">
		<c:forEach items = "${category_post}" var = "PostVO">
			<tr >
				<td>
					<div class="card bg-secondary mb-3" style="width: 100%;">
					  <div class="card-header"><a href="/lxa/post/detail?post_no=${PostVO.post_no}">${PostVO.title}</a></div>
					  <div class="card-body">
					  <span class="card-title"><c:out value='${fn:substring(PostVO.now, 0, 19)}'/>&nbsp;조회수&nbsp;${PostVO.cnt}
					  &nbsp;댓글&nbsp;${PostVO.comment_Cnt}&nbsp;좋아요&nbsp;${PostVO.like_count}</span>
					    <p class="card-text"><c:out value='${fn:substring(PostVO.context.replaceAll("\\\<.*?\\\>",""),0, 150)}' />.. <small class="text-muted"> <i class="fas fa-angle-down"></i> </small></p>
					  </div>
					</div>
				</td>
			</tr>
		</c:forEach>

		</table>
		</c:otherwise>
		</c:choose>


</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>