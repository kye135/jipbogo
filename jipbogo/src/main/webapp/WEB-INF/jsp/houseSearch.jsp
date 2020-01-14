<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="skin/header.jsp"%>

<!DOCTYPE html>
<meta charset="UTF-8">
asdfasf
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/paging.css">
<title>방찾기</title>
<script>
  function search(query) {
    if (event.key === 'Enter') {
      location.href = "houseSearch.do?query=" + query.value;
    }
  }
</script>

<div id="container">
  <div id="rooms_box">
    <div class="room_list">
      <div class="search_box">
        <input type="text" placeholder="위치, 지하철역, 주소" class="search"
          onkeydown="search(this)" />
      </div>
      <ul>
        <c:forEach items="${houseSearch }" var="i">
          <li>
            <figure>
              <a href="#"><img alt="썸네일" src="img/room_list_img.jpg"></a>
            </figure>
            <div class="info">
              <div class="title">${i.house_name }
                <div class="heart">
                  <img src="img/heart_icon.png">
                </div>
              </div>
              <div class="gen">${i.house_gen }<span>${i.house_type }</span>
                <div class="apply">
                  신청가능 <span>2</span>
                </div>
              </div>
            </div>
          </li>
        </c:forEach>
      </ul>
     </div>
  
  
  <div id="map">
    <!-- 영은이 인증코드
          e4171f048424308e6762d236584bacda  -->
    <script
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f6d76a27088cd77a9f2e292ea8698e6d&libraries=services"></script>
    <script>
          var addrArray = new Array();
          var nameArray = new Array();
        </script>
    <c:forEach items="${houseSearch }" var="i">
      <script>
              addrArray.push("${i.house_addr2 }");
              nameArray.push("${i.house_name }");
            </script>
    </c:forEach>

    <script>
    
          var mapContainer = document.getElementById('map'), mapOption = {
            // center : new kakao.maps.LatLng(33.450701, 126.570667),
            center : new kakao.maps.LatLng(0, 0),
            level : 3
          };

          var map = new kakao.maps.Map(mapContainer, mapOption);
          var bounds = new kakao.maps.LatLngBounds();
          var geocoder = new kakao.maps.services.Geocoder();

          for (var i = 0; i < addrArray.length; i++) {
            //var pos = i;
            geocoder.addressSearch(addrArray[i], function(result, status) {
              if (status === kakao.maps.services.Status.OK) {
                var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
                var marker = new kakao.maps.Marker({
                  map : map,
                  position : coords
                });

                marker.setMap(map);
                /* 
                 var infowindow = new kakao.maps.InfoWindow({
                 //content: '<div style="width:150px;text-align:center;padding:6px 0;"></div>'
                 content: nameArray[pos]
                 });
                 infowindow.open(map, marker); */
                bounds.extend(coords);

                map.setBounds(bounds);
              } // if
            }); // geocoder      	     	
          } // for
        </script>
  </div>
</div>
</div>

<%@ include file="skin/footer.jsp"%>