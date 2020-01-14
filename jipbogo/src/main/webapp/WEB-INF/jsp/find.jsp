<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="skin/header.jsp"%>

<!DOCTYPE html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="js/find.js"></script>
<title>아이디/비밀번호 찾기</title>

<style>
#join_box ul.sign_tab {
  border-bottom: 3px solid #ffc200;
}

#join_box ul.sign_tab li.current {
  background-color: #ffc200 !important;
}

#join_box .join_btn {
  padding-top: 0px;
}
</style>

<div id="container" class="page_bg">
  <div id="join_box">
    <div class="join_title">아이디/비밀번호 찾기</div>
    <ul class="sign_tab">
      <li class="current" data-tab="sign_tab1"><a href="#">아이디 찾기</a>
      <li data-tab="sign_tab2"><a href="#">비밀번호 찾기</a>
    </ul>
    
    <form action="idfindAction.do" method="post" name="frm">
      <div id="sign_tab1" class="tabcontent current">
        <input type="text" name="name" id="insertName" 
          placeholder="* 이름" onchange="return checkName()">
        <input type="email" name="email" id="insertE" 
          placeholder="* 이메일 주소" onchange="return checkEmail()">
        <input type="tel" name="phone" id="insertPhone"
          placeholder="* 휴대폰 '-' 없이 입력해주세요." onchange="return checkPhone()">
        <div class="join_btn">
          <button type="submit" onclick="return check()">확인</button>
        </div>
      </div>
    </form>
    
    <form action="pwfindAction.do" method="post" name="frm2">
      <div id="sign_tab2" class="tabcontent">
        <input type="text" name="id" name="id" id="insertID2" 
          onchange="return checkID2()" placeholder="* 아이디">
        <input type="text" name="name" id="insertName2" 
        placeholder="* 이름" onchange="return checkName2()"> 
        <input type="email" name="email" id="insertE2"
         placeholder="* 이메일 주소" onchange="return checkEmail2()">
          <input type="tel" name="phone" id="insertPhone2"
          placeholder="* 휴대폰 '-' 없이 입력해주세요." onchange="return checkPhone2()">
        <div class="join_btn">
          <button type="submit" onclick="return check2()">확인</button>
        </div>
      </div>
    </form>
  </div>
</div>

<%@ include file="skin/footer.jsp"%>