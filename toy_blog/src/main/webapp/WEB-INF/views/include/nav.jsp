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
      <c:if test = "${sessionScope.name == 'admin'}">
      <li class="nav-item">
        <a class="nav-link" href="/lxa/admin/admin"><spring:message code="Admin"/> </a>
      </li>
      </c:if>
      <li class="nav-item">
        <a class="nav-link" href="/lxa/post/list?keyword=-1"><spring:message code="List"/> </a>
      </li>
      </ul>

<c:choose>
	<c:when test = "${sessionScope.name == null}">
	<ul class="nav navbar-nav ml-auto navbar-right">
      <li class="nav-item">
        <a class="nav-link" href="/lxa/user/join"><spring:message code="Start"/> </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/lxa/user/login"><spring:message code="Login"/> </a>
      </li>
      </ul>
 </c:when>
      <c:otherwise>

	<ul class="nav navbar-nav ml-auto navbar-right">
    <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">${sessionScope.name}'s page</a>
    <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 39px, 0px);">
	   <a class="dropdown-header">유저 메일주소</a>
	   <a class="dropdown-header"><b>${sessionScope.name}</b></a>
	 <a class="dropdown-item"  href="/lxa/blog/profile_update">계정관리</a>
      <div class="dropdown-divider"></div>
     <a class="dropdown-header">운영중인 블로그</a>
      <a class="dropdown-item" href="/lxa/user/page?category_no=-1">블로그이름이 들어갑니다.</a>
    </div>
  </li>
    <li class="nav-item">
    <a class="nav-link" href="/lxa/user/logout">로그아웃</a>
    </li>
</ul>

         </c:otherwise>
</c:choose>

</div>


</nav>


