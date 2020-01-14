<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<!DOCTYPE html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="js/login.js"></script>

<title>로그인</title>

<%@ include file="skin/header.jsp"%>

<div id="container" class="page_bg">
  <div id="login_box">
    <form action="loginAction.do" method="post">
      <div class="login_title">로그인</div>
     <input type="text" name="id" id="insertID" onchange="return checkID()" placeholder="아이디">
	  <input type="password" name="pw" id="insertPw" onchange="return checkPw()"  placeholder="비밀번호">
      <div class="login_btn">
        <button type="submit" onclick="return checkIdPw();">로그인</button>
      </div>
    </form>
    <div class="find">
      <ul>
        <li><a href="find.do">아이디 찾기 / 비밀번호 찾기</a>
      </ul>
    </div>
    <div class="join_btn">
      <ul>
        <li>
          <p>일반회원이신가요?</p>
          <button type="submit">
            <a href="sign.do">회원가입</a>
          </button>
        <li>
          <p>운영주이신가요?</p>
          <button type="submit">
            <a href="sellerSign.do">운영주 회원가입</a>
          </button>
      </ul>
    </div>
  </div>
</div>


<%@ include file="skin/footer.jsp"%>
