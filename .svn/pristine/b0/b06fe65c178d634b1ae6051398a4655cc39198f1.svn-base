<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="ko">
<head>
	<jsp:include page="../common/head.jsp" />
	
	<title>Blogy &mdash; Free Bootstrap 5 Website Template by Untree.co</title>
</head>
<body>

	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close">
				<span class="icofont-close js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>

	<jsp:include page="../common/nav.jsp" />
	
	<div class="hero2">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12">
					<div class="intro-wrap">
						<form class="form" action="/pension/list">
							<div class="row mb-2">
								<div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-4">
									<select name="" id="" class="form-control custom-select">
										<option value="">Destination</option>
										<option value="">Peru</option>
										<option value="">Japan</option>
										<option value="">Thailand</option>
										<option value="">Brazil</option>
										<option value="">United States</option>
										<option value="">Israel</option>
										<option value="">China</option>
										<option value="">Russia</option>
									</select>
								</div>
								<div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-5">
									<input type="text" class="form-control" name="daterange">
								</div>
								<div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-3">
									<input type="text" class="form-control" placeholder="# of People">
								</div>

							</div>    
							<div class="row align-items-center">
								<div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-4">
									<input type="submit" class="btn btn-primary btn-block" value="Search">
								</div>
								<div class="col-lg-8">
									<label class="control control--checkbox mt-3">
										<span class="caption">Save this search</span>
										<input type="checkbox" checked="checked" />
										<div class="control__indicator"></div>
									</label>
									<button class="btn btn-primary btn-sm filter-btn" type="button">젭라</button>
									
									<div class="filter" >
										<div class="public">
											<input type="checkbox" id="inputChk" name="footVolleyballCourt" value="0"><label for="inputChk">족구장</label>
											<input type="checkbox" id="inputChk" name="karaoke" value="0"><label for="inputChk">노래방</label>
											<input type="checkbox" id="inputChk" name="convenienceStore" value="0"><label for="inputChk">편의점</label>
											<input type="checkbox" id="inputChk" name="parkingLot" value="0"><label for="inputChk">주차장</label>
											<input type="checkbox" id="inputChk" name="seminarRoom" value="0"><label for="inputChk">세미나실</label>
											<input type="checkbox" id="inputChk" name="bbq" value="0"><label for="inputChk">바베큐</label>
											<input type="checkbox" id="inputChk" name="restaurant" value="0"><label for="inputChk">식당</label>
										</div>
										
										<div class="internal">
											<input type="checkbox"  id="inputChk" name="wifi" value="0"><label for="inputChk">와이파이</label>
											<input type="checkbox"  id="inputChk" name="tv" value="0"><label for="inputChk">TV</label>
											<input type="checkbox"  id="inputChk" name="airConditioner" value="0"><label for="inputChk">에어컨</label>
											<input type="checkbox"  id="inputChk" name="miniBar" value="0"><label for="inputChk">미니바</label>
											<input type="checkbox"  id="inputChk" name="bathTub" value="0"><label for="inputChk">욕조</label>
											<input type="checkbox"  id="inputChk" name="refrigerator" value="0"><label for="inputChk">냉장고</label>
										</div>
										
										<div class="other">
											<input type="checkbox" id="inputChk" name="pickup" value="0"><label for="inputChk">픽업</label>
											<input type="checkbox" id="inputChk" name="cooking" value="0"><label for="inputChk">취사가능</label>
											<input type="checkbox" id="inputChk" name="breakfast" value="0"><label for="inputChk">조식</label>
											<input type="checkbox" id="inputChk" name="freeParking" value="0"><label for="inputChk">무료주차</label>
											<input type="checkbox" id="inputChk" name="campfire" value="0"><label for="inputChk">캠프파이어</label>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="section search-result-wrap mt-4">
		<div class="container">
			<div class="row posts-entry">
				<div class="col-lg-8">
					<c:forEach items="${pensions}" var="p">
						<div class="blog-entry d-flex blog-entry-search-item">
							<a href="/pension/detail" class="img-link me-4">
								<img src="/resources/assets/blogy/images/img_1_sq.jpg" alt="Image" class="img-fluid">
							</a>
							<div>
								<!-- <span class="date">Apr. 14th, 2022 &bullet; <a href="#">Business</a></span> -->
								<h2 class="btn btn btn-outline-primary" ><a href="/pension/detail" >${p.name}</a></h2>
								<p>${p.address}</p>
								<p><a href="#" >가격</a></p>
								<p><a href="#" >별점</a></p>
							</div>
						</div>
					</c:forEach>
					<div class="row text-start pt-5 border-top mb-4">
						<button class="btn btn-info btn-block btn-more">더보기</button>
					</div>
				</div>

				<div class="col-lg-4 sidebar">
					
					<div class="sidebar-box search-form-wrap mb-4">
						<form action="#" class="sidebar-search-form">
							<span class="bi-search"></span>
							<input type="text" class="form-control" id="s" placeholder="Type a keyword and hit enter">
						</form>
					</div>
					
					<!--  END sidebar-box-->
					<div class="sidebar-box">
						<h3 class="heading">Popular Posts</h3>
						<div class="post-entry-sidebar">
							<ul>
								<li>
									<a href="">
										<img src="/resources/assets/blogy/images/img_1_sq.jpg" alt="Image placeholder" class="me-4 rounded">
										<div class="text">
											<h4>There’s a Cool New Way for Men to Wear Socks and Sandals</h4>
											<div class="post-meta">
												<span class="mr-2">March 15, 2018 </span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="">
										<img src="/resources/assets/blogy/images/img_2_sq.jpg" alt="Image placeholder" class="me-4 rounded">
										<div class="text">
											<h4>There’s a Cool New Way for Men to Wear Socks and Sandals</h4>
											<div class="post-meta">
												<span class="mr-2">March 15, 2018 </span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="">
										<img src="/resources/assets/blogy/images/img_3_sq.jpg" alt="Image placeholder" class="me-4 rounded">
										<div class="text">
											<h4>There’s a Cool New Way for Men to Wear Socks and Sandals</h4>
											<div class="post-meta">
												<span class="mr-2">March 15, 2018 </span>
											</div>
										</div>
									</a>
								</li>
							</ul>
						</div>
					</div>
					
					<!--  END sidebar-box-->

					<div class="sidebar-box">
						<h3 class="heading">Categories</h3>
						<ul class="categories">
							<li><a href="#">Food <span>(12)</span></a></li>
							<li><a href="#">Travel <span>(22)</span></a></li>
							<li><a href="#">Lifestyle <span>(37)</span></a></li>
							<li><a href="#">Business <span>(42)</span></a></li>
							<li><a href="#">Adventure <span>(14)</span></a></li>
						</ul>
					</div>
					<!--END sidebar-box -->

					<div class="sidebar-box">
						<h3 class="heading">Tags</h3>
						<ul class="tags">
							<li><a href="#">Travel</a></li>
							<li><a href="#">Adventure</a></li>
							<li><a href="#">Food</a></li>
							<li><a href="#">Lifestyle</a></li>
							<li><a href="#">Business</a></li>
							<li><a href="#">Freelancing</a></li>
							<li><a href="#">Travel</a></li>
							<li><a href="#">Adventure</a></li>
							<li><a href="#">Food</a></li>
							<li><a href="#">Lifestyle</a></li>
							<li><a href="#">Business</a></li>
							<li><a href="#">Freelancing</a></li>
						</ul>
					</div>

				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../common/footer.jsp" />

  </body>
  
  <script>
  
  $(function() {
	  $(".filter").hide()
	  
	  $(".filter-btn").click(function() {
		  $(".filter").toggle(200)
	  })
	  
	  $(".filter").on("click", "input", function () {
		 
		  console.log($(this).val())
		  
	  })

	  $(".btn-more").click(function () {
		  alert("하..젭라")
	  })
  })
  
  </script>
  </html>