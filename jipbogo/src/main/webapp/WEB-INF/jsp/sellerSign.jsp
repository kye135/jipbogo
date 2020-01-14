<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="skin/header.jsp"%>

<!DOCTYPE html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="js/sellerSign.js"></script>
<title>운영주 회원가입</title>

<div id="container" class="page_bg">
  <div id="join_box">
    <div class="join_title">운영주 회원가입</div>
    <ul class="sign_tab">
      <li class="current" data-tab="sign_tab1"><a href="#">개인</a>
      <li data-tab="sign_tab2"><a href="#">법인</a>
    </ul>
    <form action="sellsignAction.do" method="post" name="frm">
      <div id="sign_tab1" class="tabcontent current">
        <input type="text" name="id" id="insertID" onchange="return checkID()" placeholder="* 아이디">
        <input type="password" name="pw1" id="insertPW" placeholder="* 비밀번호" onchange="return checkPW()">
        <input type="password" name="pw2" placeholder="* 비밀번호 확인">
        <input type="text" name="name" id="insertName" placeholder="* 이름" onchange="return checkName()">
        <input type="email" name="email" id="insertE" placeholder="* 이메일 주소" onchange="return checkEmail()">
        <input type="text" name="phone" id="insertPhone" placeholder="* 휴대폰 '-' 없이 입력해주세요." onchange="return checkPhone()">
        <input type="text" name="acc" id="insertAcc" placeholder="* 은행명/계좌번호/예금주명" onchange="return checkAcc()">
        <input type="hidden" name="type" value="s">
        
        <div class="gender">
          <ul>
            <li><label class="gender_btn">남<input type="radio" name="gen" value="m">
            <span class="checkmark"></span></label>
            <li><label class="gender_btn">여<input type="radio" name="gen" value="f">
            <span class="checkmark"></span></label>
            </ul>
        </div>
        <div class="check">
          <a href="/privacy.jsp" target="_blank"><label class="check_btn">(필수) 개인정보 제공 및 수집에 동의합니다.
          <input type="checkbox" name="check_pil"><span class="checkmark"></span></label></a>
          <a href="#" target="_blank"><label class="check_btn">(선택) 개인정보 제3자 제공에 동의합니다.
          <input type="checkbox"><span class="checkmark"></span></label></a>
        </div>
        <div class="join_btn">
          <button type="submit" id="checkit" onclick="return check()">회원가입</button>
        </div>
      </div>
    </form>
    
    <form action="sellsignAction2.do" method="post" name="frm2">
      <div id="sign_tab2" class="tabcontent">
        <input type="text" name="id" id="insertID2" onchange="return checkID2()" placeholder="* 아이디">
        <input type="password" name="pw1" id="insertPW2" placeholder="* 비밀번호" onchange="return checkPW2()"> 
        <input type="password" name="pw2" placeholder="* 비밀번호 확인">
        <input type="text" name="name" id="insertName2" placeholder="* 이름" onchange="return checkName2()"> 
        <input type="email" name="email" id="insertE2" placeholder="* 이메일 주소" onchange="return checkEmail2()">
        <input type="text" name="phone" id="insertPhone2" placeholder="* 휴대폰 '-' 없이 입력해주세요." onchange="return checkPhone2()">
        <input type="text" name="acc" id="insertAcc" placeholder="* 은행명/계좌번호/예금주명" onchange="return checkAcc()">
        <input type="text" name="bizNum" id="insertBiz" placeholder="* 사업자등록번호" onchange="return checkBiz()">
        <input type="hidden" name="type" value="c">
        <div class="gender">
          <ul>
          <li class="btn"><label class="gender_btn">남
          <input type="radio" name="gen" value="m"><span class="checkmark"></span></label>
          <li class="btn"><label class="gender_btn">여
          <input type="radio" name="gen" value="f"><span class="checkmark"></span></label>
          </ul>
        </div>
        <div class="check">
          <a href="/privacy.jsp" target="_blank"><label class="check_btn">(필수) 개인정보 제공 및 수집에 동의합니다.
          <input type="checkbox" name="check_pil2"><span class="checkmark"></span></label></a>
          <a href="#" target="_blank"><label class="check_btn">(선택) 개인정보 제3자 제공에 동의합니다.
          <input type="checkbox"><span class="checkmark"></span></label></a>
        </div>
        <div class="join_btn">
          <button type="submit" id="checkit" onclick="return check2()">회원가입</button>
        </div>
      </div>
    </form>
  </div>
</div>

<script>
  $(function () {
    $('ul.sign_tab li').click(function () {
      var activeTab = $(this).attr('data-tab');
      $('ul.sign_tab li').removeClass('current');
      $('.tabcontent').removeClass('current');
      $(this).addClass('current');
      $('#' + activeTab).addClass('current');
    })
  });
</script>

<%@ include file="skin/footer.jsp"%>