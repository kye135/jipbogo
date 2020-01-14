<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="skin/header.jsp"%>

<!DOCTYPE html>
<meta charset="UTF-8">
<title>입주안내</title>

<script>
  $(function() {
    $('ul.tab li').click(function() {
      var activeTab = $(this).attr('data-tab');
      $('ul.tab li').removeClass('current');
      $('.tabcontent').removeClass('current');
      $(this).addClass('current');
      $('#' + activeTab).addClass('current');
    })
  });
</script>

<div id="container">
  <div class="life_box">
    <ul class="tab">
      <li class="current" data-tab="tab1"><a href="#">입주 절차</a>
      <li data-tab="tab2"><a href="#">서비스 및 제휴 혜택</a>
    </ul>

    <div id="tab1" class="tabcontent current">
      <div id="pro_content">
        <div class="title">집보고인을 찾습니다.</div>
        <div class="description">
          <p>
            경쟁에서 벗어나 함께 공유하는 삶을 살며, 남에게 의지하기 보다는 진취적으로 문제를 해결하고, 새로운
            문화속에서 일상을 탈피한 재미를 느껴보고 싶은 분이라면!<br> 지금 집보고인이 되어보세요!
          </p>
        </div>
        <ul class="process-list">
          <div class="list-title">입주 프로세스</div>
          
          <li class="process">
            <div class="process-content">
              <img class="process-image" src="./img/img_process1.png">
              <div class="process-title">1. 입주신청</div>
              <div class="process-description">홈페이지 또는 모바일을 통해<br> 입주신청서를 작성해주세요</div>
            </div>
          
          <li class="process">
            <div class="process-content">
              <img class="process-image" src="./img/img_process2.png">
              <div class="process-title">2. 접수문자 확인</div>
              <div class="process-description">
                신청이 완료되면 접수<br> 확인문자가 발송됩니다.
              </div>
            </div>
          <li class="process">
            <div class="process-content">
              <img class="process-image" src="./img/img_process3.png">
              <div class="process-title">3. 하우스투어</div>
              <div class="process-description">
                희망지점을 방문해보고<br> 간단한 인터뷰를 합니다.
              </div>
            </div>
          <li class="process">
            <div class="process-content">
              <img class="process-image" src="./img/img_process4.png">
              <div class="process-title">4. 계약서 작성</div>
              <div class="process-description">
                하우스투어 후 희망 시 계약서<br> 작성까지 바로 가능합니다.
              </div>
            </div>
          <li class="process">
            <div class="process-content">
              <img class="process-image" src="./img/img_process5.png">
              <div class="process-title">5. 보증금/월세 납부</div>
              <div class="process-description">
                기간 내에 보증금과 월세를<br> 납부해야 계약이 완료됩니다.
              </div>
            </div>
          <li class="process">
            <div class="process-content">
              <img class="process-image" src="./img/img_process6.png">
              <div class="process-title">6. 오리엔테이션</div>
              <div class="process-description">
                입주 후 셰어하우스 생활에<br> 대한 안내를 듣게 됩니다.
              </div>
            </div>
        </ul>

        <ul class="list notice-list">
          <div class="list-title">안내사항</div>
          <div class="list-content">
            <ul>
              <li class="notice">입주신청은 현재 공실이거나 계약종료 <strong>두달
                  전</strong>인 방의 신청만 받습니다.
              <li class="notice">신규지점의 경우 신청서 작성 시 하우스투어 일정을 선택할 수
                있으며, <br> 기존지점의 경우 신청 후 2일 이내에 담당자 연락을 통해서 조율가능합니다.

              <li class="notice">보증금은 계약서 <strong>작성 후 2일
                  이내,</strong> 월세는 <strong>입주 2일 전</strong>까지 납부하셔야 합니다.<br>보증금
                납부 후 입주를 취소하실 경우, 보증금의 50%만 반환됩니다.
              <li class="notice">계약기간 만료 이전에 중도퇴실할 경우 보증금에서 <strong>위약금
                  30만원</strong>이 차감됩니다.
          </div>
        </ul>

        <div class="pro_footer">
          이제, 함께라서 더욱 즐거운<br> 집보고 사이트를 즐겨보세요!
        </div>
      </div>
    </div>

    <div id="tab2" class="tabcontent">안녕하세요2p</div>
  </div>
</div>

<%@ include file="skin/footer.jsp"%>