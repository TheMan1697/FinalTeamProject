<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!doctype html>
<html lang="ko">

<head>
	<jsp:include page="../common/head.jsp" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
	<title>여기어때 : 회원정보수정</title>
</head>

<body>
	<div class="lines-wrap">
		<div class="lines-inner">
			<div class="lines"></div>
		</div>
	</div>

	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close">
				<span class="icofont-close js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>

	<jsp:include page="../common/nav.jsp" />

	<div class="untree_co-section2 bg-light">
		<div class="container">
			<div class="row justify-content-center text-center mb-5">
				<div class="col-lg-6">
					<h2 class="text-secondary heading-2">회원정보수정</h2>
					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-lg-5 bg-white p-5">
					<form class="contact-form" method="post" data-aos="fade-up" data-aos-delay="200">
						<div class="row">
							<!-- 아이디 -->
							<div class="col-12">
								<div class="form-group">
									<label class="text-black" for="userId">ID</label>
									<input type="text" class="form-control" id="userId" name="userId" value="${member.userId}" required>
									<button class="btn btn-primary" type="button" id="btnId">ID중복 체크</button>
                                    <input type="hidden" value="1" id="chkId">
									<small id="passwordHelpInline" class="text-muted">5~20자의 영문 소문자, 숫자만 사용 가능합니다.</small>
								</div>
							</div>
							
							<!-- 비밀번호 -->
							<div class="col-12">
								<div class="form-group">
									<label class="text-black" for="password">Password</label>
									<input type="password" class="form-control" id="password" name="pw" value="${member.pw}" required>
									<button class="btn btn-primary" type="button" id="btnPw">PW중복 체크</button>
                                    <input type="hidden" value="1" id="chkPw">
									<small id="passwordHelpInline" class="text-muted">8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.</small>
								</div>
							</div>
						</div>
						
						<!-- 이름 -->
						<div class="form-group">
							<label class="text-black" for="name">Name</label>
							<input type="text" class="form-control" id="name" name="name" value="${member.name}" required>
						</div>
						
						<!-- 닉네임  -->
						<div class="form-group">
							<label class="text-black" for="nickName">NickName</label>
							<input type="text" class="form-control" id="nickName" name="nickName" value="${member.nickName}" required>
						</div>
						
						<!-- 주소 -->
						<div class="form-group">
							<label class="text-black d-block" for="Addr">Adrr</label>
							<input type="text" class="form-control w-50 mr-3 d-inline-block" id="zipNo" name="zipNo" placeholder="우편번호" value="${member.zipNo}" readonly>
							<button type="button" class="btn btn-primary " id="btnSearchAddr">주소검색</button>	
							<input type="text" class="form-control" id="roadAddr" name="roadAddr" placeholder="기본주소" value="${member.roadAddr}" readonly>
							<input type="text" class="form-control" id="addrDetail" name="addrDetail" placeholder="상세주소 (선택 입력 가능)" value="${member.addrDetail}" required>
						</div>
						  
						<input type="hidden" name="emd" value="읍면동" id="emd">
						<input type="hidden" name="roadFullAddr" value="전체주소" id="roadFullAddr">
						<input type="hidden" name="jibunAddr" value="지번주소" id="jibunAddr">
						<input type="hidden" name="si" value="시" id="si">
						
						<!-- 이메일 -->
						<div class="form-group">
							<label class="text-black" for="email">Email</label>
							<input type="text" class="form-control" id="email" name="email" value="${member.email}" required>
						</div>

						<!-- 핸드폰번호  -->
						<div class="row">
							<label class="text-black" for="phone">Phone Number</label>
							<div class="form-group col-4">  
								<select name="phone" id="phone" class="form-control custom-select">
									<option>010</option>
									<option>011</option>
								</select>
							</div>
							<div class="form-group col-4">
								<input type="text" class="form-control is-valid d-inline-block" id="phone2" name="phone2" value="${member.phone}" required>
							</div>
							<div class="form-group col-4">
								<input type="text" class="form-control is-valid d-inline-block" id="phone3" name="phone3" required>
								<div class="valid-feedback">Looks good!</div>
							</div>	
						</div>
						
						<!-- 생년월일 -->
						<!-- <div class="row">
							<label class="text-black" for="birthDate">BirthDate</label>
							<div class="form-group col-4">
								<select name="birthDate" id="birthDate" class="form-control custom-select">
									<option>1993</option>
									<option>1994</option>
								</select>
							</div>
							<div class="form-group col-4">
								<select name="birthDate" id="birthDate" class="form-control custom-select">
									<option>8</option>
									<option>9</option>
								</select>
							</div>
							<div class="form-group col-4">	
								<select name="birthDate" id="birthDate" class="form-control custom-select">
									<option>11</option>
									<option>12</option>
								</select>
							</div>
						</div> -->
						
						
						<div class="form-group">
							<p><small>By proceeding, you agree to the <a href="#">Terms and Conditions</a></small></p>
						</div>
						
						<button class="btn btn-primary mb-4">Create an account</button>
						
						<div class="form-group">
							<p><small>Already have an account? <a href="login">Log in</a></small></p>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
  
	<jsp:include page="../common/footer.jsp" />
	
	<script>
		$(function() {
			$("#btnSearchAddr").click(function() {
				var pop = window.open("/member/juso","pop","width=570,height=420, scrollbars=yes, resizable=yes");
			});
			
			$("#userId").change(function() {
        		$("#chkId").val(1);
        	});
        	
        	$("#pw").change(function() {
        		$("#chkPw").val(1);
        	});
        	
          	$("form").submit(function() {
        		if($("#chkId").val()) {
        			alert("id 중복 체크");
        			return false;
        		}
        		if($("#chkPw").val()) {
        			alert("pw 중복 체크");
        			return false;
        		}
        	})  
        	
		})
		
		function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
			$("#emd").val(emdNm);
			$("#roadAddr").val(roadAddrPart1);
			$("#addrDetail").val(addrDetail);
			$("#zipNo").val(zipNo);
			$("#roadFullAddr").val(roadFullAddr);
			$("#jibunAddr").val(jibunAddr);
			$("#si").val(siNm);
		}
	 </script>
</body>
</html>