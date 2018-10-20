<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>



<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
  <a class="navbar-brand" href="/lxa"><i class="fas fa-draw-polygon">&nbsp;BLOG</i></a>
   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="true" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="navbar-collapse" id="navbarColor02">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="/lxa"><spring:message code="Home"/> <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/lxa/about/about"><spring:message code="About"/></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/lxa/event/event_page"><spring:message code="Event"/> </a>
      </li>
      <c:if test = "${sessionScope.name == 'admin'}">
      <li class="nav-item">
        <a class="nav-link" href="/lxa/admin/admin"><spring:message code="Admin"/> </a>
      </li>
      </c:if>
      <li class="nav-item">
        <a class="nav-link" href="/lxa/post/list"><spring:message code="List"/> </a>
      </li>

<c:choose>
	<c:when test = "${sessionScope.name == null}">
      <li class="nav-item">
        <a class="nav-link" href="/lxa/user/join"><spring:message code="Start"/> </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/lxa/user/login"><spring:message code="Login"/> </a>
      </li>
 </c:when>
      <c:otherwise>

       <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown"  role="button" href= "#" aria-haspopup="true" aria-expanded="false">${sessionScope.name}, <spring:message code="Page"/> </a>
    <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 39px, 0px);">
      <a class="dropdown-item" href="/lxa/user/page?category_no=-1"><spring:message code="page"/></a>
      <a class="dropdown-item" href="/lxa/blog/profile_update"><spring:message code="profile"/></a>
      <a class="dropdown-item" href="/lxa/blog/blog_update"><spring:message code="blog_info"/></a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="/lxa/user/user_update"><spring:message code="my"/></a>
    </div>
  </li>

      <li class="nav-item">
        <a class="nav-link" href="/lxa/user/logout"><spring:message code="Logout"/> </a>
      </li>

         </c:otherwise>
</c:choose>

    </ul>

	<ul class="nav navbar-nav mx-auto navbar-right">
    <li class="nav-item">
        <a class="nav-link" href="#search"><spring:message code="search"/></a>

    </li>
      <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown"  role="button" aria-haspopup="true" aria-expanded="false"><spring:message code="Translation"/></a>
    <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 39px, 0px);">
      <a class="dropdown-item" href="?lang=ko"><spring:message code="ko"/></a>
      <a class="dropdown-item" href="?lang=en"><spring:message code="en"/></a>
    </div>
</ul>



  </div>
</nav>



<script type="text/javascript">
$(function () {
    $('a[href="#search"]').on('click', function(event) {
        event.preventDefault();
        $('#search').addClass('open');
        $('#search > form > input[type="search"]').focus();
    });

    $('#search, #search button.close').on('click keyup', function(event) {
        if (event.target == this || event.target.className == 'close' || event.keyCode == 27) {
            $(this).removeClass('open');
        }
    });


    //Do not include! This prevents the form from submitting for DEMO purposes only!
   /*  $('form').submit(function(event) {
        event.preventDefault();
        return false;
    }) */
});
</script>

<script>
$(function() {
  var availableTags = [

<c:forEach items = "${list}" var = "PostVO">
	"${PostVO.title}",
	"${PostVO.name}",
</c:forEach>

	 <c:forEach items = "${keywords}" var = "WordVO">
			"#${WordVO.word}",
	</c:forEach>


  ];
  $( "#tags" ).autocomplete({
    source: availableTags
  });
} );
</script>



<div id="search">
    <button type="button" class="close">×</button>
    <form action="/lxa/search/search">
        <input type="search" id ="tags" name = "search" placeholder="type keyword(s) here" />
        <button type="submit" class="btn btn-primary"><spring:message code="search"/></button>
    </form>
</div>
