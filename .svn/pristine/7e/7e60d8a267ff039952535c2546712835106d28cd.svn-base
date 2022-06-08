<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<!-- nav -->
	<nav class="site-nav">
		<div class="container">
			<div class="site-navigation">
				<a href="${pageContext.request.contextPath}/index" class="logo m-0">여수어때</a>
				
				<ul class="js-clone-nav d-none d-lg-inline-block text-left float-right site-menu">
					<li><a href="${pageContext.request.contextPath}/index">Home</a></li>
					<li><a href="${pageContext.request.contextPath}/pension/list">list</a></li>
					<li><a href="rent.html">Rent</a></li>
					<li><a href="about.html">About</a></li>
					<li><a href="contact.html">Contact Us</a></li>
					
					<sec:authorize access="isAnonymous()">
						<li><a href="${pageContext.request.contextPath}/member/join">Sign up</a></li> 
						<li class="cta-button active"><a href="${pageContext.request.contextPath}/member/login">Login</a></li>
					</sec:authorize>
					
					<sec:authorize access="isAuthenticated()">
					<li class="has-children">
						<a href="#"><sec:authentication property="principal.username"/></a>
						<ul class="dropdown">
							<li><a href="${pageContext.request.contextPath}/member/mypage">마이페이지</a></li>
							<li><a href="#" onclick="event.preventDefault(); confirm('로그아웃 하시겠습니까?') ? document.logout.submit() : ''">로그아웃</a></li>
						</ul>
					</li>
					</sec:authorize>
				</ul>
				
				<a href="#" class="burger ml-auto float-right site-menu-toggle js-menu-toggle d-inline-block d-lg-none" data-toggle="collapse" data-target="#main-navbar">
					<span></span>
				</a>
				<form action="/logout" name="logout" method="post" onsubmit="return confirm('로그아웃 하시겠습니까?')"></form>
			</div>
		</div>
	</nav>