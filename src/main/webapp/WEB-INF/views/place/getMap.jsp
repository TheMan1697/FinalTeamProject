<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!doctype html>
<html lang="ko">

<head>
	<jsp:include page="../common/head.jsp" />

	<title>여수어때 : 지도보기</title>
</head>
<link href="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.15/jquery.bxslider.min.css" rel="stylesheet" />
<sec:csrfMetaTags/>
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
       <div class="map_wrap">
			<div id="map" style="width:100%;height:700px;margin:0 auto; overflow:hidden; border:1px solid;"></div>
			
			
   			<div id="side_wrap" style="position:absolute;top:0;left:0;bottom:0;width:400px;height:698px;margin:101px 0 30px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255);z-index: 1;font-size:12px;border-radius: 10px;">
   			<!-- 상세페이지 메인 -->
				<div class="col-lg-13">
					<ul class="bxslider">
						<c:forEach var="i" begin="0" end="${pension.attachs.size() -1}">
							<li><img src="/display?path=${pension.attachs[i].path.trim()}&uuid=${pension.attachs[i].uuid}" alt="Image" class="ml-5 pl-2 img-fluid"></li>
						</c:forEach>
					</ul>
				</div>
				<div class="col-lg-12">
					<h3 class="heading">${pension.name}</h3>
					<p class="meta">${pension.address}</p>
					<div class="d-block agent-box p-5">
						<div class="text">
							<h3 class="my-2 font-weight-bold">사장님 한마디</h3>
							<p>${pension.comments}</p>
						</div>
					</div>
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
         <form action="/pension/detail">
           	 <h6 class="ml-2 pb-1">
           	 	<i class="far fa-calendar-alt"></i>
           	 	예약날짜
           	 </h6>
             <div class="mb-3">
	             <input type="text" class="form-control d-inline text-center" style="width:230px" id="daterange" readonly />
				 <button class="btn btn-info btn-sm ml-1 mb-1">선택</button>
             </div>
	             <input type="hidden" class="form-control" name="pensionid" value="${pension.pensionid}" readonly />
	             <input type="hidden" class="form-control" name="startDate" value="${startDate}" readonly>
				 <input type="hidden" class="form-control" name="endDate" value="${endDate}" readonly>
		   </form>
            <div class="container room1"></div>
         </div>
         <div id="menu1" class="container tab-pane fade"><br>
         <!-- Reply area Start -->
         <article id="review" class="review on" >
            <div class="score_top">
               <strong>만족해요</strong>
               <!-- 별 그려보기 -->
               <div class="row col-7 mx-auto">
                  <div class="text-warning display-3 col-10 float-right" id="paintStar">
                     <i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i>
                  </div>
                  <div class="num col-2 display-3 text-left">${pension.starRate/2}</div> 
               </div>
               <p>전체 리뷰 <b>${pension.replyCnt}</b> <span>|</span>제휴점 답변 <b>${pension.replyCnt}</b></p>
            </div>
            <sec:authorize access="isAuthenticated()">
               <div class="text-right">
                  <button type="button" class="btn btn-primary mb-3 mr-4 replyEvent" id="replyEvent">이용후기 남기기</button>
               </div>
               <div class="card shadow mb-4" id="replyForm">
                     <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary float-left">이용 후기</h6>
                     </div>
                     <div class="card-body">
                     <form method="post">
                        <div class="form-group row">
                           <div class="col-7">
                              <label for="pensionid">이용 펜션</label>
                              <input type="text" class="form-control" id="pensionid" readonly value="${pension.name}">
                           </div>
                           <div class="col-5">
                              <label for="starRate">별점</label>
                              <input type="number" min="0" max="10" step="1" class="form-control" placeholder="별점" id="starRate" name="starRate" value="10">
                           </div>
                        </div>
                        <div class="form-group row">
                           <div class="col-10">
                              <label for="title">댓글 제목</label>
                              <input type="text" class="form-control" placeholder="댓글 제목을 입력해주세요." id="title" name="title">
                           </div>
                           <div class="col-2">
                              <label for="writer">작성자</label>
                              <input type="text" class="form-control" id="writer" name="nickName" readonly value='<sec:authentication property="principal.member.nickName"/>'>
                           </div>
                        </div>
                        <div class="form-group">
                           <label for="content">댓글 내용</label>
                           <input type="text" class="form-control" placeholder="댓글 내용을 입력해주세요." id="content" name="content">
                        </div>
                        <div class="form-group uploadDiv">
                           <label for="attach" class="btn btn-info btn-sm">첨부</label>
                           <input type="file" class="form-control d-none" placeholder="attach" id="attach" name="attach" multiple>
                        </div>
                        
                        <div class="card shadow mb-4">
                           <div class="card-header py-3">
                              <h6 class="m-0 font-weight-bold text-primary float-left">Files</h6>
                           </div>
                           <div class="card-body">
                              <ul class="list-group small container px-1 upload-files">
                                 
                              </ul>
                           <div class="container pt-3 px-1">
                              <div class="row thumbs">
                                 
                              </div>
                           </div>
                           </div>
                        </div>
                        <sec:csrfInput/>
                        <button type="submit" class="btn btn-warning" id="btnReg">Submit</button>
                        <a href="/board/list" type="submit" class="btn btn-dark">목록</a>
                     </form>
                  </div>
               </div>
            </sec:authorize>
            <sec:authorize access="isAnonymous()">
               <div class="text-center py-4">
                  <a href="/member/login">댓글 등록은 로그인 이후에 가능합니다.</a>
               </div>
            </sec:authorize>
         
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
   			<button id="side_button_left" style="background-color:white; border:none; position:absolute; margin:-370px 0 0 400px;z-index:1;"><img src="https://maps.gstatic.com/tactile/pane/arrow_left_2x.png" style="width:42px;margin:0 auto;"></button>
   			  <button id="side_button_right" style="background-color:white; border:none; position:absolute; margin:-370px 0 0 0px;z-index:1; display:none"><img src="https://maps.gstatic.com/tactile/pane/arrow_left_2x.png" style="width:42px;margin:0 auto; transform:rotate(-180deg);"></button>
		</div>         
		
	<jsp:include page="../common/footer.jsp" />
	 <sec:authorize access="isAuthenticated()">
      <sec:authentication property="principal.member.nickName" var="replyer"/>
   </sec:authorize>
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
	    center: new kakao.maps.LatLng('${pension.latitude}', '${pension.longitude}'), // 지도의 중심좌표
	    level: 5 // 지도의 확대 레벨
	};
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	//마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다
	var positions = [],
	selectedMarker=null;
	
		mapService.getList(function(result) {
			for(var a in result) {
				var marker = positions.push({
					content:'<div style="font-weight:bold;"><img src="/display?path='+result[a].attachs[0].path + '&uuid='+result[a].attachs[0].uuid+'" width="300px" height="100px" style="overflow:hidden; margin-bottom:8px;"><br>'+result[a].name+ ' / 별점 : '+result[a].starRate/2+'<br><div style="text-align:center; margin-top:13px;"><a href="/map/place/'+result[a].pensionid+'/'+result[a].name+'" class="btn btn-warning btn-register btn-block" id="pushState">지도에서 보기</a></div>'
					+'<div style="text-align:center; margin-top:1px;"><a href="/pension/detail?pensionid='+result[a].pensionid+'" class="btn btn-primary btn-register btn-block">상세페이지로 가기</a></div></div>'
					,latlng: new kakao.maps.LatLng(result[a].latitude, result[a].longitude)});
				
			}
			 $(function(){
			      $('#paintStar').html(starStr(result[a].starRate));
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
			   };
			   
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

	
	
	/* 아래와 같이도 할 수 있습니다 */
	/*
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
	
	// 마커에 이벤트를 등록하는 함수 만들고 즉시 호출하여 클로저를 만듭니다
	// 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
	(function(marker, infowindow) {
	    // 마커에 mouseover 이벤트를 등록하고 마우스 오버 시 인포윈도우를 표시합니다 
	    kakao.maps.event.addListener(marker, 'mouseover', function() {
	        infowindow.open(map, marker);
	    });
	
	    // 마커에 mouseout 이벤트를 등록하고 마우스 아웃 시 인포윈도우를 닫습니다
	    kakao.maps.event.addListener(marker, 'mouseout', function() {
	        infowindow.close();
	    });
	})(marker, infowindow);
	
	}
	*/
	 
	});
	$(document).ready(function(){
		$(document).on('click', '#pushState',function(event){
			history.pushState(null, null,  $("#pushState").attr("href"));
			/* event.preventDefault(); */
			$('#side_wrap').animate({width:'show'},600);
			$('#side_button_left').animate({width:'show'},950);
			$('article').load($("#pushState").attr("href")+'article>.place')
		 })
		 $('#side_button_left').on('click', function(){
			$('#side_wrap').animate({width:'hide'},300);
			$('#side_button_left').hide();
			$('#side_button_right').animate({width:'show'});
		 })	 
		 $('#side_button_right').on('click', function(){
			 $(this).hide();
			$('#side_wrap').animate({width:'show'},600);
			$('#side_button_left').animate({width:'show'});
		 })	 
		 $(window).on('popstate', function(event){
			 $('article').load(location.href+'article>.place')
		 })
	})
</script>
<script>
   $(document).ready(function(){ $('.bxslider').bxSlider(); });
   </script>
   <script>
	$(function() {
		$("#attach").change(function() {
			var str = "";
			$(this.files).each(function() {
				str += "<p>" + this.name + "</p>";
			})
			$(this).next().html(str);
		});
	})
   </script>
   <script>
   //======동엽=================================================
   var headerName = $("meta[name='_csrf_header']").attr("content")
	var token = $("meta[name='_csrf']").attr("content")
	
	$(document).ajaxSend(function(e, xhr) {
		xhr.setRequestHeader(headerName, token);
	})
	
	// 썸네일 lightbox
	
	// 파일 첨부
	var $clone = $(".uploadDiv").clone();
	var regexp = /(.*?)\.(exe|sh|js|jsp)$/;
	var maxSize = 1024 * 1024 * 5;
	
	function validateFiles(fileName, fileSize) {
		if(fileSize >= maxSize){
			alert("파일 사이즈 초과");
			return false;
		}
		if(regexp.test(fileName)) {
			alert("해당 파일의 종류는 업로드할 수 없습니다.");
			return false;
		}
		return true;
	}
		
	$(".uploadDiv").on("change", ":file", function() {
		var formData = new FormData();
		console.log("this는 ", this);
		for(var i in this.files) {
			if(!validateFiles(this.files[i].name, this.files[i].size)) {
				return false;
			} 
			formData.append("files", this.files[i]);
		}
		formData.append("type", "");
		console.log(this.files);
		console.log(formData);
		$.post({
			processData : false,
			contentType : false,
			data : formData,
			url : "/upload",
			dataType : "json"
		}).done(function(result) {
			console.log(result);
			$(".uploadDiv").html($clone.html());
	
			var str = "";
			var thumbStr = "";
			for(var i in result){
				console.log("result[i]", result[i]);
				console.log("$.param(result[i])", $.param(result[i]));
				str += '<li class="list-group-item" data-uuid="' + result[i].uuid + '" data-path="' + result[i].path + '" data-image="' + result[i].image + '" data-origin="' + result[i].origin + '"><a href="/download?' + $.param(result[i]) +'">' 
						+ result[i].origin + '</a><button type="button" class="close"><span>×</span></button></li>';
				if(result[i].image){
					var o = {...result[i]}; // clone
					o.uuid = 's_' + o.uuid;
					thumbStr += '<div class="col-6 col-sm-4 col-lg-3 col-xl-2" data-uuid="' + result[i].uuid + '" data-path="' + result[i].path + '" data-image="' + result[i].image + '" data-origin="' + result[i].origin + '">';
					thumbStr += '  	<figure class="d-inline-block" style="position: relative;">';
					thumbStr += '  		<figcaption><button type="button" class="close" style="position: absolute; top:15px; right:8px;"><span>&times;</span></button></figcaption>';
					thumbStr += '  		<a href="/display?' + $.param(result[i]) + '" data-lightbox="img" data-title="' + o.origin +'"><img alt="" src="/display?' + $.param(o) + '" class="mx-1 my-2 img-thumbnail"></a>';
					thumbStr += '  	</figure>';
			  		thumbStr += '</div>';
				}
			}
			$(".upload-files").append(str);
			$(".thumbs").append(thumbStr);
		})
	})
   // 파일 첨부 종료
   
   // 파일 삭제 이벤트
   
   /* 이벤트 */
   // 댓글 등록 이벤트
   $("#btnReg").click(function() {
      /* event.preventDefault(); */
      var str = "";
      var attrArr = ['uuid', 'origin', 'path', 'image'];
      $(".upload-files li").each(function(i) {
         for(var j in attrArr){
            attrArr[j]
            str += 
               $("<input>")
               .attr("type", "hidden")
               .attr("name", "attachs[" + i + "]." + attrArr[j])
               .attr("value", $(this).data(attrArr[j])).get(0).outerHTML + "\n";
         }1
      });
      console.log("str은 ", str);
      $(this).closest("form").append(str).submit(); // 첨부파일 글쓰기 가능!
   });
   </script>
   <script>
   // 단일 댓글 생성 - 새로운 폼에 적용
   $(function() {
      var substring = function(string) {
         string = string.substring(5);
         return string;
      }
      function getReplyStr(reply) {
         var str = "";
         str += '<ul>';
         str += '   <li>';
         str += '      <div class="guest">';
         str += '            <p class="pic"><img src="//image.goodchoice.kr/profile/ico/ico_22.png" alt="' + reply.nickName + '"></p> ';
         str += '            <span class="best_review" data-rno="' + reply.rno + '">베스트 리뷰</span> ';
         str += '            <strong>' + reply.rno + '</strong> ';
         str += '            <strong id="title">' + reply.title + '</strong> ';
         str += '         <div class="score_wrap_sm">';
         str += '            <div class="score_star star_50">';
         str += '            </div> ';
         str += '            <div class="num">' + "별점 : " + reply.starRate + '</div>';
         str += '         </div> ';
         str += '         <div class="name"><b>럭셔리카라반블루 객실 이용 · </b>';
         str += '            ' + reply.nickName;
         str += '         </div> ';
         str += '         <div class="txt"  id="content">';
         str += '            ' + reply.content;
         str += '         </div> ';
         if(reply.attachs.length) {
        	 // while (j < reply.attachs.length) {
	            str += '         <div class="gallery_re">';
	            str += '            <div class="swiper-container swiper-type-3 swiper-container-horizontal" style="cursor: grab;">';
	            str += '               <ul class="swiper-wrapper">';
	            for(var j in reply.attachs) {
	            str += '                  <li class="swiper-slide swiper-slide-active" style="max-width: 350px; max-height:250px; overflow:hidden">';
	            str += '                     <img src="' + '/display?path=reply_re' + substring(reply.attachs[j].path) + '&uuid=' + reply.attachs[j].uuid + '" alt="Image" class="img-fluid">';
	            str += '                  </li>';
	            	if(j == 2) break;
	            }
	            str += '               </ul>';
	            str += '               <div class="swiper-button-next">';
	            str += '               </div> ';
	            str += '               <div class="swiper-button-prev swiper-button-disabled">';
	            str += '               </div>';
	            str += '            </div>';
	            str += '         </div> ';
        	 // }
         }
         str += '         <span class="date">' + replyService.displayTime(reply.regDate) + '</span>';
         str += '      </div> ';
         str += '      <div class="boss">';
         str += '         <p class="pic">';
         str += '            <img src="//image.goodchoice.kr/profile/ico/ico_owner.png" alt="제휴점 답변">';
         str += '         </p> <strong>제휴점 답변</strong> ';
         str += '         <div class="txt">';
         str += '            ' + reply.nickName + '님 안녕하세요.고객님 소중한 이용 후기 감사드립니다!<br>즐겁고 만족한 여행이 되신 것 같아 다행입니다.<br>저희 숙소는 앞으로도 고객님의 입장에서 먼저 생각하고 친절과 배려하는 서비스가 제공될 수 있도록 노력하겠습니다.<br>즐거운 추억만 가져가셨길 바라며 다음에도 함께하길 바라겠습니다.';
         str += '         </div> ';
         str += '         <span class="date">2개월 전</span>';
         str += '      </div>';
         str += '   </li>';
         str += '</ul>';
         return str;
      }
      
	  // 이용후기 유효성 검증
      var validateTitle = function() {
         console.log("validateTitle()");
         var val = $("#title").val().trim();
         if(val.length == 0 || val == "") {
            alert("제목을 입력해주세요.")
            return;
         }
      }
      var validateContent = function() {
         console.log("validateContent()");
         var val = $("#content").val().trim();
         if(val.length == 0 || val == "") {
            alert("내용을 입력해주세요.")
            return;
         }
      }
      $("#title").on("focusout", validateTitle);
      $("#content").on("focusout", validateContent);
      
      // 댓글목록 조회 - 새로운 폼에 적용
      var pensionid = '${pension.pensionid}';
      var lastRno;
      var amount;
      function showList(lastRno, amount) {
    	  var param = {pensionid:pensionid, lastRno:lastRno, amount:amount}
    	  console.log("pensionid는 ", param.pensionid);
    	  replyService.getList(param, function(result) {
    		  console.log("result.list는 ", result.list);
   			  console.log("result는", result);
   			  /* console.log("path는 ", path); */
    		  var str = '';
    		  for(var i in result.list) {
    			  str += getReplyStr(result.list[i]);
    		  }
    		  $(".chat").html(str);
    	  })
      }
      showList(lastRno, amount);
      
      // 더보기 버튼 이벤트
      $(".btn-more").click(function() {
         var lastRno = $(".best_review").last().data("rno");
         console.log("lastRno는 " + lastRno);
         var param = {pensionid:pensionid, lastRno:lastRno};

         $btnMore = $(this);
         replyService.getList(param, function(result) {
            console.log(result.list);
            var str = '';
            for(var i in result.list) {
               str += getReplyStr(result.list[i]);
            }
            $(".chat").append(str);
         }, null, function() {
            $btnMore.prop("disabled", true);
         }, function(result) {
            if(result.length == 0) $btnMore.remove();
            setTimeout(function() {
               $btnMore.prop("disabled", false);
            }, 1000);
         })
      })
	   // 댓글작성 폼 숨기기
      $('#replyForm').hide();
      // 댓글작성 폼 열기
      $('#replyEvent').click(function() {
         $('#replyForm').show(); // .toggle()
      })
   });
   </script>
   <script>
   // 별점
   function getReplyStr2 (avg) {
      var str2 = "";
      str2 += '<div class="score_star star_40">';
      str2 += '</div>';
      str2 += '<div class="num">' + avg + '</div>';
      return str2;
   }
   // 별사진
   $(function(){
      $('#paintStar').html(starStr("${pension.starRate}"));
      /* $('.nav.nav-tabs li a').eq(1).click(); // 리뷰 바로 확인용 */
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
            str += '<i class="fas fa-star-half-alt" style="width:81px"></i>';
         }
         else {
            str += '<i class="far fa-star"></i>';
         } 
      }
      return str;
   };
   
   // console.log("==============JS TEST=====================")
   // 댓글등록
   // replyService.add({pensionid:"6867", title:"댓글을 달아본다.", content:"그렇다", starRate:"10", nickName:"김돌게장"}, function(result) {
   // 	console.log("등록결과 : " + result);
   // });
 	
   // 댓글삭제
   // replyService.remove({rno:"108"}, function(result) {
   // 	console.log("삭제결과 : " + result);
   // });
    
   // 댓글 수정
   // replyService.update({rno:"32109", starRate:"10", pensionid:"10358", nickName:"동글이85", title:"변경되라 얍", content:"변경된 내용"}, function(result) {
   // 	console.log("수정결과" + result);
   // }) 
   </script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.15/jquery.bxslider.min.js"></script>
   <script src="/resources/js/room.js"></script>
   <script>
      //======상현=================================================
         $(function() {
            var pensionid ='${pension.pensionid}';
            var lastRoomNum;
            var amount;
            var start = $('input[name="startDate"]').val() + "";
            var end = $('input[name="endDate"]').val() + "";

            function formatDate(date) {
                var d = new Date(date),
                
                month = '' + (d.getMonth() + 1) , 
                day = '' + d.getDate(), 
                year = d.getFullYear();
                
                if (month.length < 2) month = '0' + month; 
                if (day.length < 2) day = '0' + day; 
                
                return [year, month, day].join('/');
                }   
            
         function getRoomStr(room) {
            var str="";
               str +='<div class="row col-10 mx-auto">'
                  str +='            <div class="col-5">'
                  str +=' <p class="pic_view">'
                  str +='                <img class="img-thumbnail" src="/display?path=' + room.attachs[0].path.trim() + '&uuid=' + room.attachs[0].uuid + '">'
                  str +='   </p>'
                  str +='            </div>'
                  str +='            <div class="col-7">'
                  str +='            <div class="">'
                  str +='                <h3 class="heading mb-3">'+room.roomName+'</h3>'
                  str +='                <p class="text-dark">가격  <span class="float-right">'+room.price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+' 원</span></p>'
                  str +='                <hr>'
                  str +='                <form action="/reservation/reserve" name="filterFrm">'   
                  str +='                      <input type="hidden" name="pensionid" value="' + pensionid + '" />'
                  str +='                      <input type="hidden" name="roomNum" value="' + room.roomNum + '" />'
                  str +='                      <input type="hidden" class="form-control" name="date1" value="' + start + '" readonly />'
                  str +='                      <input type="hidden" class="form-control" name="date2" value="' + end + '" readonly />'
                  if(room.reservationStatus ? start >= formatDate(room.deadline) || formatDate(room.startTime) >= end : true) {
    	              str +='                      <button type="submit" class="btn btn-primary btn-register btn-block" >예약 가능</button>'
                  }
                  else {
  	                  str +='                      <button type="submit" class="btn btn-primary btn-register btn-block" disabled>예약 불가</button>'
                  }
                  str +='                  </form>'
                  str +='            </div>'
                  str +='        </div>'
                  str +='    </div>'
                /*   str+= '<div class="cal_bg" display="none">'
                  str+= '    <button type="button">닫기</button>'
                  str+= '      </div>'
                  str+= '     <div class="pic_wrap" display="none">'
                  str+= '     </div>' */
               return str;
         }
         function showList(pensionid, lastRoomNum, amount) {
            var param ={pensionid:pensionid, lastRoomNum:lastRoomNum,amount:amount}
            roomService.getList(param, function(result) {
               console.log(result);
               var str='';
               for (var i in result) {
                  str+=getRoomStr(result[i]);
               }
                  $(".room1").html(str);
            })
         }
         showList(pensionid, lastRoomNum,amount)
         
      /*    $(function () {
            $('.room1 .pic_view').click(function () {
               $('.cal_bg, .pic_wrap').show()
               $('.room1 .pic_view').addClass('on')
            })
         })
         $(function () {
            $('.room1 .pic_view on').click(function () {
               $('.cal_bg, .pic_wrap').hide()
               $('.room1 .pic_view on').removeClass('on')
            })
         }) */
         
      /*     $('.room1 .pic_view').each(function(){ // PC 갤러리 열기
        $(this).click(function(){
            if (!$(this).hasClass('pic_empty')) {
                $(this).parent().addClass('on');
                setTimeout(function(){
                    $('.room1.on .cal_bg, .room1.on .pic_wrap').show();
                },300);
            }
        });
      $()
    }); */

   /*  $('.room1 .cal_bg button').each(function(){ // PC 갤러리 닫기
        $(this).click(function(){
            $(this).parent().parent().removeClass('on');
         $(this).parent().hide();
//         $('.room_info .room.on .cal_bg,   .room_info .room.on .pic_wrap').removeClass('visible');
        });
    }); */
         
         /*  $(".btn-more").click(function() {
            var lastRoomNum = $(".room1").last().data("roomNum");
            console.log(lastRoomNum);
            var param = {pensionid:pensionid, lastRoomNum:lastRoomNum};

            $btnMore = $(this);
            roomService.getList(param, function(result) {
               console.log(result);
               var str = '';
               for(var i in result) {
                  str += getRoomStr(result[i]);
               }
               $(".room1").append(str);
            }, null, function() {
               $btnMore.prop("disabled", true);
            }, function(result) {
               if(result.length == 0) $btnMore.remove();
               setTimeout(function() {
                  $btnMore.prop("disabled", false);
               }, 1000);
            })
         }); */
         
   });
   //======상현=================================================
   </script>
</body>
</html>