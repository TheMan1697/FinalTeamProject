<%@ page language="java" contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
</head>
<body>
	<sec:authorize access="isAnonymous()">
   	<a href="/member/login">로그인</a>
   	<a href="/member/join">회원가입</a>
   	</sec:authorize>

	<sec:authorize access="isAuthenticated()">
     <form action="/member/logoutTest" method="post" onsubmit="return confirm('로그아웃 하시겠습니까?')">
     <button class="dropdown-item">Logout</button>
     <sec:csrfInput/>
     </form>
	</sec:authorize>
</body>
</html>