<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<link rel="stylesheet" href="path/to/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.jquery.min.js"></script>
<title>메인</title>

<%@include file="skin/header.jsp" %>
<div id="container">
	<div id="top_btn">
	<a href="#top">▲</a>
	</div>
	<div id="main_banner" class="swiper-container swiper-container-horizontal">
		 <div class="swiper-wrapper">
			<!-- Slides -->
			<div class="swiper-slide"><img src="./img/main_banner1.jpg"></div>
			<div class="swiper-slide"><img src="./img/main_banner2.jpg"></div>
			<div class="swiper-slide"><img src="./img/main_banner3.jpg"></div>
		</div>
		<!-- If we need pagination -->
		<div class="swiper-pagination"></div>
    
		<!-- If we need navigation buttons -->
		<div class="swiper-button-prev"></div>
		<div class="swiper-button-next"></div>
    
		<!-- If we need scrollbar 
		<div class="swiper-scrollbar"></div>-->
	</div>
	<div class="con1">
		<div class="con_in">
			<div class="con_banner">
				<p>삶의 질을 높일 수 있는</p>
				<p>만족스러운 주거환경과 룸메이트</p>
				<a href="houses.do">JIPBOGO 바로가기 ></a>
			</div>
		</div>
	</div>
	<div class="con2">
		<div class="con_in">
			<div class="sub_title">JIPBOGO의 다양한 생활공간을 둘러보세요.<span class="solid_line"></span></div>
			<div class="con2_img">
				<ul>
					<li style="background-image:url('./img/con2_banner1.jpg');"><a href="#"><h3>따로 또 같이<br><strong>1인실</strong></h3></a></li>
					<li style="background-image:url('./img/con2_banner2.jpg');"><a href="#"><h3>따로 또 같이<br><strong>1인실</strong></h3></a></li>
					<li style="background-image:url('./img/con2_banner3.jpg');"><a href="#"><h3>따로 또 같이<br><strong>1인실</strong></h3></a></li>
					<li style="background-image:url('./img/con2_banner4.jpg');"><a href="#"><h3>따로 또 같이<br><strong>1인실</strong></h3></a></li>
					<li style="background-image:url('./img/con2_banner5.jpg');"><a href="#"><h3>따로 또 같이<br><strong>1인실</strong></h3></a></li>
					<li style="background-image:url('./img/con2_banner6.jpg');"><a href="#"><h3>따로 또 같이<br><strong>1인실</strong></h3></a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="con3">
		<div class="con_in">
			<div class="sub_title">많은 분들이 JIPBOGO를 선택한 이유<span class="solid_line"></span></div>
			<div class="list">
        <ul>
          <li><img src="./img/icon1.png">
            <p class="t1">안전한 계약</p>
            <p class="t2">
              믿을 수 있는<br> 집보고 표준 임대차 계약서로<br> 안심 계약 가능!<br>
            </p></li>
          <li><img src="./img/icon2.png">
            <p class="t1">간편한 방 검색</p>
            <p class="t2">
              검색필터를 통해<br> 원하는 조건 매물을<br>간편하게 검색할 수 있어요!
            </p></li>
          <li><img src="./img/icon3.png">
            <p class="t1">상세한 설명</p>
            <p class="t2">
              매물정보, 옵션정보 등을 <br>통해
			집을 결정하는데 필요한 <br>모든 정보를 정리해서 보여드려요.
            </p></li>
          <li><img src="./img/icon4.png">
            <p class="t1">빠른 매물 확인</p>
            <p class="t2">
				궁금한 사항은 운영주님들에게<br> 바로 문의 할 수 있게 연락처가 <br>공개 되어 있습니다.
            </p></li>
          <li><img src="./img/icon5.png">
            <p class="t1">헛걸음 보상제도</p>
            <p class="t2">
              검색한 매물과<br>실제 매물이 다르다면<br>소정의 위로품을 드립니다.
            </p></li>
          <li><img src="./img/icon6.png">
            <p class="t1">빠른민원해결</p>
            <p class="t2">
              빠른 민원접수와<br>해결로 시설문제도<br>걱정없어요!
            </p></li>
        </ul>
      </div>
		</div>
	</div>
</div>
<!-- 이미지 슬라이드 -->
<script>        
  var mySwiper = new Swiper ('.swiper-container', {
    // Optional parameters
    direction: 'horizontal',
    loop: true,
	autoplay: {
    delay: 4000,
  },
	effect:'fade',
	fadeEffect: {
    crossFade: true
  },
	
    
    // If we need pagination
    pagination: {
    el: '.swiper-pagination',
    type: 'bullets',
  },
    // Navigation arrows
    navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },
    
    // And if we need scrollbar
    scrollbar: '.swiper-scrollbar',
  })        
</script>

    

<%@include file="skin/footer.jsp" %>
