<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방정보</title>

<%@ include file="skin/header.jsp" %>
<link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.min.css">

<script src="https://unpkg.com/swiper/js/swiper.min.js"></script>

<body>
<div id="container">
	<div id="sub_content">
	<c:forEach items="${roomDetail }" var="i">	
  <div class="swiper-container gallery-top">
    <div class="swiper-wrapper">
      <div class="swiper-slide" style="background-image:url(./img/room_detail_img1.jpg)"></div>
      <div class="swiper-slide" style="background-image:url(./img/room_detail_img2.jpg)"></div>
      <div class="swiper-slide" style="background-image:url(./img/room_detail_img3.jpg)"></div>
      <div class="swiper-slide" style="background-image:url(./img/room_detail_img4.jpg)"></div>
      <div class="swiper-slide" style="background-image:url(./images/nature-5.jpg)"></div>
      <div class="swiper-slide" style="background-image:url(./images/nature-6.jpg)"></div>
    </div>
    <!-- Add Arrows -->
    <div class="swiper-button-next swiper-button-white"></div>
    <div class="swiper-button-prev swiper-button-white"></div>
  </div>
  <div class="swiper-container gallery-thumbs">
    <div class="swiper-wrapper">
      <div class="swiper-slide" style="background-image:url(./img/room_detail_img1.jpg)"></div>
      <div class="swiper-slide" style="background-image:url(./img/room_detail_img2.jpg)"></div>
      <div class="swiper-slide" style="background-image:url(./img/room_detail_img3.jpg)"></div>
      <div class="swiper-slide" style="background-image:url(./img/room_detail_img4.jpg)"></div>
      <div class="swiper-slide" style="background-image:url(./images/nature-5.jpg)"></div>
      <div class="swiper-slide" style="background-image:url(./images/nature-6.jpg)"></div>
    </div>
  </div>
  

	<div class="info_title">
       <div class="t1"><a href="#intro">지점 소개</a></div><!--  
       --><div class="t1"><a href="#info">방 정보</a></div><!--
       --><div class="t1"><a href="#location">위치 정보</a></div>
    </div>
    <div id="room_detail">
      <div id="intro">
        1, 4호선 동대문역 바로 코 앞에 우주 60호점이 생겼답니다.

창신동 우주 하우스는 1호선 동대문역 1번 출구에서 도보 3분 안에 도착할 수 있는 곳입니다. 

최근, 종로를 중심으로 서울을 새롭게 재해석하는 동네들이 인기를 끌면서 이곳 창신동 역시 많은 사람들이 찾고 있는 동네랍니다. 바로 인근에는 창신동 네팔음식거리가 있어 새로운 정취를 느낄 수 있고, 동대문 성곽공원, 흥인지문, 동대문 DDP와 동대문역사문화공원이 있어 다양한 문화시설과 고즈넉한 여유를 즐길 수 있는 동네랍니다.
      
      <table>
      	<tr>
      		<td>지점 이름</td>
      		<td>${i.house_name }</td>
      		<td>주소</td>
      		<td colspan="3">${i.house_addr2 }</td>
      	</tr>
        <tr>
          <td>주차여부</td>
          <td>${i.house_parking }</td>
          <td>성별</td>
          <td>${i.house_gen }</td>
          <td>지점계약종료일</td>
          <td>${i.house_exp }</td>
        </tr>
        <tr>
          <td>최대거주인원</td>
          <td>${i.house_max }명</td>
          <td>주택유형</td>
          <td>${i.house_type }</td>
          <td>구조</td>
          <td>${i.house_layout }</td>
        </tr>
      </table>
      </div>
      <div id="info">
        <table>
          <tr>
            <td>이름</td>
            <td>성별</td>
            <td>타입</td>
            <td>면적</td>
            <td>보증금</td>
            <td>월세</td>
            <td>운영관리비</td>
            <td>선불공과금</td>
            <td>입주가능일</td>
          </tr>
          <tr>
            <td>Room A</td>
            <td>${i.room_a_gen }</td>
            <td>${i.room_a_type }</td>
            <td>${i.room_a_size }㎡</td>
            <td>${i.room_a_depo }원</td>
            <td>${i.room_a_month }원</td>
            <td>${i.room_a_cost }원</td>
            <td>${i.room_a_utility }원</td>
            <td>${i.room_a_avail }</td>
          </tr>
          <tr>
            <td>Room B</td>
            <td>여성전용</td>
            <td>1인실</td>
            <td>10㎡</td>
            <td>1,100,000원</td>
            <td>550,000원</td>
            <td>50,000원</td>
            <td>1원</td>
            <td>즉시입주</td>
          </tr>
          <tr>
            <td>Room C</td>
            <td>여성전용</td>
            <td>1인실</td>
            <td>10㎡</td>
            <td>1,100,000원</td>
            <td>550,000원</td>
            <td>50,000원</td>
            <td>1원</td>
            <td>즉시입주</td>
          </tr>
          <tr>
            <td>Room D</td>
            <td>여성전용</td>
            <td>1인실</td>
            <td>10㎡</td>
            <td>1,100,000원</td>
            <td>550,000원</td>
            <td>50,000원</td>
            <td>1원</td>
            <td>즉시입주</td>
          </tr>
        </table>
        <div class="info_title">금융시설</div>
        <div class="info_txt">
        의자, 토스스터기, 빨래걸이, 스탠드, 조명, 테이블, 취사도구, 청소기, 빨래건조대, 신발장</p>
        </div>  
        <div class="info_title">개인시설</div>
        <div class="info_txt">
        의자, 토스스터기, 빨래걸이, 스탠드, 조명, 테이블, 취사도구, 청소기, 빨래건조대, 신발장</p>
        </div>      
      </div>
      <div id="location">
      	<div id="map">
      	<!-- 영은이 인증코드
          e4171f048424308e6762d236584bacda  -->
        <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f6d76a27088cd77a9f2e292ea8698e6d&libraries=services"></script>
        <script type="text/javascript">
          var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
          var options = { //지도를 생성할 때 필요한 기본 옵션
            center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
            level: 3 //지도의 레벨(확대, 축소 정도)
          };

          var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

          // 지도 드래그 및 축소 확대 금지
          map.setDraggable(false);
          map.setZoomable(false);

          var geocoder = new kakao.maps.services.Geocoder();
          geocoder.addressSearch('서울 금천구 벚꽃로 254', function (result, status) {

            // 정상적으로 검색이 완료됐으면 
            if (status === kakao.maps.services.Status.OK) {
              var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
              // 결과값으로 받은 위치를 마커로 표시합니다
              var marker = new kakao.maps.Marker({
                map: map,
                position: coords
              });

              // 인포윈도우로 장소에 대한 설명을 표시합니다
              var infowindow = new kakao.maps.InfoWindow({
                content: '<div style="width:150px;text-align:center;padding:6px 0;">사물인터넷진흥협회교육센터학원</div>'
              });
              infowindow.open(map, marker);

              // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
              map.setCenter(coords);
            }
          });
          
        </script>
      	</div>
      	<div class="user_info">
      		<table>
      			<tr>
      				<td>지점 운영자</td>
      				<td>집보고</td>
      				<td>담당자 전화번호</td>
      				<td>01012341234</td>
      				<td>이메일</td>
      				<td>test@naver.com</td>
      			</tr>
      		</table>
      	</div>
      </div>
    </div>
      </c:forEach>
  </div>
</div>

  <script>
    var galleryThumbs = new Swiper('.gallery-thumbs', {
      spaceBetween: 10,
      slidesPerView: 6,
      loop: true,
      freeMode: true,
      loopedSlides: 5, //looped slides should be the same
      watchSlidesVisibility: true,
      watchSlidesProgress: true,
    });
    var galleryTop = new Swiper('.gallery-top', {
      spaceBetween: 10,
      loop:true,
      loopedSlides: 5, //looped slides should be the same
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
      thumbs: {
        swiper: galleryThumbs,
      },
    });
  </script>


<%@ include file="skin/footer.jsp" %>