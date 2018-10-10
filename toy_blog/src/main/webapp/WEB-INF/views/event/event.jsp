<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/include/head.jsp" %>


</head>
<body>

<%@ include file="/WEB-INF/views/include/nav.jsp" %>
<h1 style="margin-top: 30px;"> EVENT </h1>
<div style=" margin-left : auto; margin-right : auto; width: 50%; ">
	<ul class="nav nav-tabs">
		<li class="nav-item">
		<a class="nav-link active show" data-toggle="tab" href="#listEvent">LIST</a>
		</li>
		<li class="nav-item">
		<a class="nav-link" data-toggle="tab" href="#cal">CALANDER</a>
		</li>
		<li class="nav-item">
		<a class="nav-link disabled" href="#">Disabled</a>
		</li>
	</ul>


	<div id="myTabContent" class="tab-content">
		<!-- 이벤트 목록 -->
		<div class="tab-pane fade active show" id="listEvent">

			<!-- alter table blog modify column now timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP; -->

			<c:forEach items = "${event}" var = "EventVO">
			   <table class="table" style = "margin-left : auto; margin-right : auto; margin-top : 30px;">
						<tr>
							<td style="text-align: left; width: 80%;">
								<h3>
								  ${EventVO.event_title}
								</h3>
								  <small class="text-muted">${EventVO.event_startDate} ~ ${EventVO.event_endDate}</small>
							</td>
							<td>
							<c:choose>
								<c:when test = "${sessionScope.name == null}">
									<a href="/lxa/blog/loginCheck"><button type="button" class="btn btn-primary" style="float: right;" disabled="disabled"><i class="fab fa-gratipay">&nbsp;이벤트 참여하기</i></button></a>&nbsp;
								</c:when>
								<c:otherwise>
									<a href="entry?event_no=${EventVO.event_no}"><button type="button" class="btn btn-primary" onclick ="alert('이벤트 참여완료!');" style="float: right;"><i class="fab fa-gratipay">&nbsp;이벤트 참여하기</i></button></a>&nbsp;
								</c:otherwise>
							</c:choose>

							</td>
						</tr>
						<tr>
							<td colspan="2">
							${EventVO.event_content}
						 	</td>
						</tr>

			   </table>
					</c:forEach>
			</div>

		<!-- 이벤트 달력 -->
		<div class="tab-pane fade show" id="cal">
			<%@ include file="/WEB-INF/views/event/event_cal.jsp" %>
		</div>


	</div>
</div>
<%@ include file="/WEB-INF/views/include/footer2.jsp" %>
</body>
</html>