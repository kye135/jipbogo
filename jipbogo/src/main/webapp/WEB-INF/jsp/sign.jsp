<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="skin/header.jsp"%>

<!DOCTYPE html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="js/sign.js"></script>
<title>회원가입</title>
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<div id="container" class="page_bg">
  <div id="join_box">
    <div class="join_title">회원가입</div>
    <form action="signAction.do" method="post" name="frm">
      <input type="text" name="id" id="insertID" onchange="return checkID()" placeholder="* 아이디">
      <input type="password" name="pw1" id="insertPW" placeholder="* 비밀번호" onchange="return checkPW()">
      <input type="password" name="pw2" placeholder="* 비밀번호 확인">
      <input type="text" name="name" id="insertName" placeholder="* 이름" onchange="return checkName()">
      <input type="email" name="email" id="insertE" placeholder="* 이메일 주소" onchange="return checkEmail()">
      <input type="text" name="phone" id="insertPhone" placeholder="* 휴대폰 '-' 없이 입력해주세요." onchange="return checkPhone()">
      <input type="hidden" name="type" value="b">
      
      <div class="gender">
        <ul>
          <li><label class="gender_btn">남<input type="radio" name="gen" value="m"><span class="checkmark"></span></label>
          <li><label class="gender_btn">여<input type="radio" name="gen" value="f"><span class="checkmark"></span></label>
      	</ul>
      </div>
      <div class="check">
        <a href="/privacy.jsp" target="_blank">
        <label class="check_btn">(필수) 개인정보 제공 및 수집에 동의합니다.
        <input type="checkbox" name="check_pil">
        <span class="checkmark"></span></label>
        </a>
        <a href="#" target="_blank">
        <label class="check_btn">(선택) 개인정보 제3자 제공에 동의합니다.
        <input type="checkbox"><span class="checkmark"></span></label>
        </a>
      </div>
      <div class="join_btn">
        <button type="submit" id="checkit" onclick="return check()">회원가입</button>
      </div>
    </form>
  </div>
</div>

<%@ include file="skin/footer.jsp"%>
