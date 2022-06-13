<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!doctype html>
<html lang="ko">

<head>
	<jsp:include page="../views/common/head.jsp" />

	<title>여수어때 : 지도보기</title>
</head>
<link href="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.15/jquery.bxslider.min.css" rel="stylesheet" />
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
	
	<jsp:include page="../views/common/nav.jsp" />
		<div class="map_wrap">
			<div id="map" style="width:100%;height:700px;margin:0 auto; overflow:hidden; border:1px solid;"></div>
   			
   			<!-- side_wrap 시작  -->
   			<div id="side_wrap" style="position:absolute;top:0;left:0;bottom:0;width:400px;height:698px;margin:77px 0 30px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255);z-index: 1;font-size:12px;border-radius: 10px; display: none;">
	<!-- 상세페이지 메인 -->
	<div class="section border-top">
	</div>
	
   <div class="container mt-3">
      <!-- Nav tabs -->
      <ul class="nav nav-tabs">
         <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#home">객실안내/예약</a>
         </li>
         <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#menu1">리뷰</a>
         </li>
      </ul>
      <!-- Tab panes -->
      <div class="tab-content">
         <div id="home" class="container tab-pane active"><br>
            <div class="container room1"></div>
         </div>
         <div id="menu1" class="container tab-pane fade"><br>
         <!-- Reply area Start -->
         <article id="review" class="review on" >
            <div class="score_top">
            </div>
               <div class="text-right">
                  <button type="button" class="btn btn-primary mb-3 mr-4 replyEvent" id="replyEvent">이용후기 남기기</button>
               </div>
               <div class="card shadow mb-4" id="replyForm">
               </div>
               <div class="text-center py-4">
                  <a href="/member/login">댓글 등록은 로그인 이후에 가능합니다.</a>
               </div>
         
            <!-- 댓글 들어가는 곳 -->
            <div class="chat">
               
            </div>
            <div class="p-3">
               <button class="btn btn-info btn-block btn-more">더보기</button>
            </div>
         </article>
         <!-- Reply area End -->
         <hr>
         </div>
      </div>
   </div>
   </div>
   
   			<button id="side_button_left" style="background-color:white; border:none; position:absolute; margin:-370px 0 0 400px;z-index:1; display:none"><img src="https://maps.gstatic.com/tactile/pane/arrow_left_2x.png" style="width:42px;margin:0 auto;"></button>
   			  <button id="side_button_right" style="background-color:white; border:none; position:absolute; margin:-370px 0 0 0px;z-index:1; display:none"><img src="https://maps.gstatic.com/tactile/pane/arrow_left_2x.png" style="width:42px;margin:0 auto; transform:rotate(-180deg);"></button>
		</div>            
        



	<jsp:include page="../views/common/footer.jsp" />
   <script src="/resources/js/pension.js" ></script>
   <script src="/resources/js/reply.js"></script>
	<script src="/resources/js/map.js" ></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=53da4885eed3b04fe18257eeb209aa7c&libraries=services"></script>
  	
<script>
	
	$(function() {
		var markerList = [];
		var infowindowList = [];
		
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
	mapOption = { 
	    center: new kakao.maps.LatLng(34.74756145157297, 127.74561623573636), // 지도의 중심좌표
	    level: 5 // 지도의 확대 레벨
	};
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	//마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다
	var positions = [],
	selectedMarker=null;
	
		mapService.getList(function(result) {
			var str = "";
			var str2 = "";
			var str3 = "";
			var str4 = "";
			for(var a in result) {
				var marker = positions.push({
					content:'<div style="font-weight:bold;"><img src="/display?path='+result[a].attachs[0].path + '&uuid='+result[a].attachs[0].uuid+'" width="300px" height="100px" style="overflow:hidden; margin-bottom:8px;"><br>'+result[a].name+ ' / 별점 : '+result[a].starRate/2+'<br><div style="text-align:center; margin-top:13px;"><a href="/map/place/'+result[a].pensionid+'/'+result[a].name+'" class="btn btn-warning btn-register btn-block" id="pushState">지도에서 보기</a></div>'
					+'<div style="text-align:center; margin-top:1px;"><a href="/pension/detail?pensionid='+result[a].pensionid+'" class="btn btn-primary btn-register btn-block">상세페이지로 가기</a></div></div>'
					,latlng: new kakao.maps.LatLng(result[a].latitude, result[a].longitude)});
				
			}
/* 			 $(function(){
			      $("#paintStar").html(starStr(result[a].starRate));
			   });
			   
			   function starStr(score) {
			      score = parseInt(score);
			      var str = "";
			      for(var i = 1 ; i <= 5 ; i++) { // 11회
			         var val = parseInt(score/2);
			         if(i <= val) {
			            str += '<i class="fas fa-star"></i>';
			         }
			         else if(score-val == i){
			            str += '<i class="fas fa-star-half-alt"></i>';
			         }
			         else {
			            str += '<i class="far fa-star"></i>';
			         } 
			      }
			      return str;
			   }; */
		})
	
	
	for (var i = 0; i < positions.length; i ++) {
	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	    map: map, // 마커를 표시할 지도
	    position: positions[i].latlng // 마커의 위치
	});
	
	// 마커에 표시할 인포윈도우를 생성합니다 
	var infowindow = new kakao.maps.InfoWindow({
	    content: positions[i].content // 인포윈도우에 표시할 내용
	});
	
	markerList.push(marker);
	infowindowList.push(infowindow);
		
	for(let i = 0, ii = markerList.length; i < ii; i++) {
		  kakao.maps.event.addListener(map, "click", ClickMap(i));
		  kakao.maps.event.addListener(markerList[i], "click", function(){
			  var marker = markerList[i]
			  var infowindow = infowindowList[i];
			  infowindow.open(map,marker);
		  });
		}

	}
		
	
	function ClickMap(i) {
		return function () {
		  	var infowindow = infowindowList[i];
		  	infowindow.close()
		}
	}	
	

	
	
	 
	})
			   
		
</script>
   
</body>
</html>