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

<div style="max-width: 1000px; margin-right: auto; margin-left: auto; margin-top: 150px;">



 <table class="table"  style = "margin-left : auto; margin-right : auto; margin-top : 30px;">


			<tr class="table-secondary">
				<td>
					${eventVO.event_title }
					<input type ="hidden" name = "event_no" value="${eventVO.event_no}">

				</td>
				<td style="float: right;">
				 ${cnt}명 참여중

				</td>
			</tr>

			<tr class="table-secondary" >
				<td colspan="2">${eventVO.event_content}</td>
			</tr>


			<tr class="table-secondary">


				<td colspan="2">

							<c:choose>
								<c:when test = "${sessionScope.name == null}">
				      				 <a href= "event_page" class="btn btn-secondary"><i class="fas fa-list"></i></a>
									 <a href="/lxa/blog/loginCheck"><button type="button" class="btn btn-primary" style="float: right;" disabled="disabled"><i class="fab fa-gratipay">&nbsp;이벤트 참여하기</i></button></a>&nbsp;
								</c:when>
								<c:otherwise>
				      				 <a href= "event_page" class="btn btn-secondary"><i class="fas fa-list"></i></a>
									<a href="entry?event_no=${eventVO.event_no}"><button type="button" class="btn btn-primary" style="float: right;"><i class="fab fa-gratipay">&nbsp;이벤트 참여하기</i></button></a>&nbsp;
								</c:otherwise>
							</c:choose>
				</td>

			</tr>
</table>

</div>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>