<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>



<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
  <a class="navbar-brand" href="/lxa"><i class="fas fa-draw-polygon">&nbsp;BLOG</i></a>
   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
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
    <a class="nav-link dropdown-toggle" data-toggle="dropdown"  role="button" aria-haspopup="true" aria-expanded="false">${sessionScope.name}, <spring:message code="Page"/> </a>
    <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 39px, 0px);">
      <a class="dropdown-item" href="/lxa/user/page">page</a>
      <a class="dropdown-item" href="#">프로필 설정</a>
      <a class="dropdown-item" href="/lxa/blog/blog_update">블로그 설정</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="/lxa/user/user_update">회원정보 수정</a>
    </div>
  </li>
    
      <li class="nav-item">
        <a class="nav-link" href="/lxa/user/logout"><spring:message code="Logout"/> </a>
      </li>

         </c:otherwise>
</c:choose>
      <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown"  role="button" aria-haspopup="true" aria-expanded="false"><spring:message code="Translation"/></a>
    <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 39px, 0px);">
      <a class="dropdown-item" href="/lxa/?lang=ko">ko</a>
      <a class="dropdown-item" href="/xa/?lang=en">en</a>
    </div>
  </li>
     
    </ul>

  </div>
</nav>
