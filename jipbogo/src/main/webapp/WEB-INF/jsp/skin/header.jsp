<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<meta charset="utf-8">
<link
  href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Nanum+Gothic+Coding|Noto+Sans+KR&display=swap"
  rel="stylesheet">
<link rel="stylesheet" href="css/skin.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/sub.css">
<link rel="stylesheet" href="css/inquiry.css">
<link rel="stylesheet" href="css/lifes.css">
<link rel="stylesheet" href="css/find.css">
<!-- <link rel="stylesheet" href="css/qnaDetail.css"> -->
<link rel="stylesheet" href="css/houseDetail.css">
<link rel="stylesheet" href="css/roomRegist.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script type="text/javascript">
  $(".cate > ul > li > a").click(function() {
    toggleClass(".active-color");
  });
</script>

<div id="header">
  <div class="inner">
    <div class="logo">
      <a href="main.do"><img src="img/logo.png"></a>
    </div>

    <div class="cate">
      <ul>
        <li><a href="houses.do">방찾기</a></li>
        <li><a href="lifes.do">입주안내</a></li>
        <li><a href="inquiryWrite.do">1:1 문의</a></li>
        <li><a href="userQna.do">Q&amp;A</a></li>
        <li><a href="notice.do">공지사항</a></li>
      </ul>
    </div>

    <div class="right_cate">
      <ul>
        <c:if test="${sessionScope.type ne 'b' && sessionScope.id != null}">
        	<li><a href="roomRegistList.do">방관리</a></li>
        </c:if>
        
        <c:if test="${sessionScope.id != null }">
          <li><a href="logout.do">로그아웃</a></li>
          <li>
          <c:choose>
            <c:when test="${sessionScope.type eq 'a'}">관리자 </c:when>
            <c:when test="${sessionScope.type eq 'b'}">일반인 </c:when>
            <c:when test="${sessionScope.type eq 's'}">운영주 </c:when>
            <c:when test="${sessionScope.type eq 'c'}">법인 </c:when>
          </c:choose>
          </li>
        </c:if>
        
        <c:if test="${sessionScope.id == null }">
          <li><a href="login.do">로그인</a></li>
          <li><a href="sign.do">회원가입</a></li>
          <li><a href="sellerSign.do">운영주 회원가입</a></li>
        </c:if>
      </ul>
    </div>
  </div>
</div>

