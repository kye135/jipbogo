<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="skin/header.jsp"%>

<!DOCTYPE html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>오시는길</title>

<div id="container">
	<div id="sub_top_banner">
		<img src="img/sub_banner.jpg">
	</div>
	<div id="sub_content">
		<div class="sub_location">
			<img src="img/home_icon.png"> > 오시는길
		</div>
		<div class="sub_title">오시는길<span class="solid_line"></span></div>
		<div id="location_box">
			<div id="map">
				<script type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e4171f048424308e6762d236584bacda&libraries=services"></script>
				<script type="text/javascript">
          var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
          var options = { //지도를 생성할 때 필요한 기본 옵션
            center : new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
            level : 3
          //지도의 레벨(확대, 축소 정도)
          };

          var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

          // 지도 드래그 및 축소 확대 금지
          map.setDraggable(false);
          map.setZoomable(false);

          var geocoder = new kakao.maps.services.Geocoder();
          geocoder
              .addressSearch(
                  '서울 금천구 벚꽃로 254',
                  function(result, status) {

                    // 정상적으로 검색이 완료됐으면 
                    if (status === kakao.maps.services.Status.OK) {
                      var coords = new kakao.maps.LatLng(result[0].y,
                          result[0].x);
                      // 결과값으로 받은 위치를 마커로 표시합니다
                      var marker = new kakao.maps.Marker({
                        map : map,
                        position : coords
                      });

                      // 인포윈도우로 장소에 대한 설명을 표시합니다
                      var infowindow = new kakao.maps.InfoWindow(
                          {
                            content : '<div style="width:150px;text-align:center;padding:6px 0;">사물인터넷진흥협회교육센터학원</div>'
                          });
                      infowindow.open(map, marker);

                      // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                      map.setCenter(coords);
                    }
                  });
				</script>
			</div>
		</div>
	</div>
</div>

<%@ include file="skin/footer.jsp"%>