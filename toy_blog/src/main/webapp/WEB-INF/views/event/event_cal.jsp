<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>

<br>

<title>Insert title here</title>



<link href="<c:url value="/resources/css/fullcalendar.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/fullcalendar.print.css" />" rel="stylesheet" media='print'>
<script src="<c:url value="/resources/js/moment.min.js" />"></script>
 <script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/js/fullcalendar.min.js" />"></script>


<!-- <link rel='stylesheet' type='text/css' href='https://fullcalendar.io/js/fullcalendar-3.0.1/fullcalendar.css' />
<link rel='stylesheet' type='text/css' href='https://fullcalendar.io/js/fullcalendar-3.0.1/fullcalendar.print.css' media='print' />
 <script src='https://fullcalendar.io/js/fullcalendar-3.0.1/lib/moment.min.js'></script>
<script src='https://fullcalendar.io/js/fullcalendar-3.0.1/lib/jquery.min.js'></script>
<script src='https://fullcalendar.io/js/fullcalendar-3.0.1/fullcalendar.min.js'></script> -->


<style>

body {
/* 	margin: 40px 10px; */
	padding: 0;
	font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
	font-size: 14px;
}

#calendar {
	max-width: 900px;
	margin: 0 auto;
}

</style>



<script type='text/javascript'>




$(document).ready(function() {


	$('#calendar').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay,listWeek',
			},

		defaultDate: new Date(),
		navLinks: true, // can click day/week names to navigate views
		editable: false,
		eventLimit: false, // allow "more" link when too many events
		events: [
		        <c:forEach var='EventVO' items='${event}'>
             { title: '${EventVO.event_title}', start: '${EventVO.event_startDate}', end : '${EventVO.event_endDate}' },
          	 	</c:forEach>
          /*    { title: '안녕', start: '2018-10-02' } */

		]

	});

});


</script>

<div id='calendar' style="margin-bottom: 70px;"></div>



