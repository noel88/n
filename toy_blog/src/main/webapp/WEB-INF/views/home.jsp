<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
#key {

 border: 4px dashed #bcbcbc;
}

</style>

<%@ include file="/WEB-INF/views/include/head.jsp"%>

<%@ include file="/WEB-INF/views/include/nav.jsp"%>


    <!-- Custom fonts for this template -->

    <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/css/agency.min.css" rel="stylesheet">

  </head>




    <!-- Portfolio Grid -->
    <section class="bg-light" id="portfolio">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">HOT BLOG</h2>
            <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
          </div>
        </div>
        <div class="row">
        <c:forEach items="${blog_info}" varStatus="status" var="blog">
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fas fa-plus fa-3x"></i>
                </div>
              </div>
               <c:if test="${blog.profile_img == null}">
                <a href="blog/user_blog?name=${blog.blog_user}"><img class="img-fluid" src="<spring:url value ='/img/no_image.png'/>" alt=""></a>
				</c:if>
				<c:if test="${blog.profile_img != null}">
             	 <a href="blog/user_blog?name=${blog.blog_user}"><img class="img-fluid" src="<spring:url value ='/image/${blog.profile_img}'/>" alt=""></a>
                </c:if>
            </a>
            <div class="portfolio-caption">
              <h4>${blog.blog_title}</h4>
              <p class="text-muted">${blog.blog_info}</p>
            </div>
          </div>
          </c:forEach>
        </div>
      </div>
    </section>
<!--
Services
    <section id="services">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">Services</h2>
            <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
          </div>
        </div>
        <div class="row text-center">
          <div class="col-md-4">
            <span class="fa-stack fa-4x">
              <i class="fas fa-circle fa-stack-2x text-primary"></i>
              <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>
            </span>
            <h4 class="service-heading">E-Commerce</h4>
            <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
          </div>
          <div class="col-md-4">
            <span class="fa-stack fa-4x">
              <i class="fas fa-circle fa-stack-2x text-primary"></i>
              <i class="fas fa-laptop fa-stack-1x fa-inverse"></i>
            </span>
            <h4 class="service-heading">Responsive Design</h4>
            <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
          </div>
          <div class="col-md-4">
            <span class="fa-stack fa-4x">
              <i class="fas fa-circle fa-stack-2x text-primary"></i>
              <i class="fas fa-lock fa-stack-1x fa-inverse"></i>
            </span>
            <h4 class="service-heading">Web Security</h4>
            <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
          </div>
        </div>
      </div>
    </section> -->


    <!-- About -->
    <section id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">About</h2>
            <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <ul class="timeline">
              <li>
                <div class="timeline-image">
                  <img class="rounded-circle img-fluid" src="<spring:url value ='/img/132.PNG'/>" alt="">
                </div>
                <div class="timeline-panel">
                  <div class="timeline-heading">
                    <h4>2018.09</h4>
                    <h4 class="subheading">블로그 첫 개설일</h4>
                  </div>
                  <div class="timeline-body">
                    <p class="text-muted">블로그 홈페이지가 처음 개설되었습니다.</p>
                  </div>
                </div>
              </li>
              <li class="timeline-inverted">
                <div class="timeline-image">
                  <img class="rounded-circle img-fluid" src="<spring:url value ='/img/blog_.PNG'/>" alt="">
                </div>
                <div class="timeline-panel">
                  <div class="timeline-heading">
                    <h4>2018.10</h4>
                    <h4 class="subheading">1st 리뉴얼</h4>
                  </div>
                  <div class="timeline-body">
                    <p class="text-muted">자신만의 블로그가 완성되었습니다.</p>
                  </div>
                </div>
              </li>
              <li>
                <div class="timeline-image">
                  <img class="rounded-circle img-fluid" src="#" alt="">
                </div>
                <div class="timeline-panel">
                  <div class="timeline-heading">
                    <h4>2018.11</h4>
                    <h4 class="subheading">2nd 리뉴얼</h4>
                  </div>
                  <div class="timeline-body">
                    <p class="text-muted">기존 디자인을 버리고 새롭게 태어났습니다.</p>
                  </div>
                </div>
              </li>
              <li class="timeline-inverted">
                <div class="timeline-image">
                  <img class="rounded-circle img-fluid" src="#" alt="">
                </div>
                <div class="timeline-panel">
                  <div class="timeline-heading">
                    <h4>2018.12</h4>
                    <h4 class="subheading">완성</h4>
                  </div>
                  <div class="timeline-body">
                    <p class="text-muted">완성된 홈페이지</p>
                  </div>
                </div>
              </li>
              <li class="timeline-inverted">
                <div class="timeline-image">
                  <h4>Be Part
                    <br>Of Our
                    <br>Story!</h4>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>



<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<script src="<spring:url value ='/resources/js/jquery.easing.min.js'/>"></script>

    <!-- Custom scripts for this template -->
    <script src="<spring:url value ='/resources/js/agency.min.js'/>"></script>




</body>
</html>