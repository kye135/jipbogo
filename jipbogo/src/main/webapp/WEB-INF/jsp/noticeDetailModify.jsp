<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="skin/header.jsp"%>

<!DOCTYPE html>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>공지사항 글수정</title>

<div id="container">
  <div id="sub_top_banner">
    <img src="img/sub_banner.jpg">
  </div>
  <div id="sub_content">
    <div class="sub_location">
      <img src="img/home_icon.png"> > 공지사항
    </div>
    <div class="sub_title">
      공지사항<span class="solid_line"></span>
    </div>
    <div class="board_title1">글수정</div>
    
    <form action="noticeDetailModifyAction.do" method="post">
      <table class="in_board wirte">
        <tr>
          <td>제목</td>
          <td><input type="text" name="title" style="width: 100%;" value="${noticeDetailModify.notice_title }"></td>
        </tr>
        <tr>
          <td>내용</td>
          <td><textarea name="content">${noticeDetailModify.notice_content }</textarea></td>
        </tr>
        <tr>
          <td>첨부파일</td>
          <td><input type="file" class="file"></td>
        </tr>
      </table>
      <div class="btn">
      <input type="hidden" name="notice_no" value="${noticeDetailModify.notice_no }">
        <button type="submit">글수정</button></div>
    </form>
    <div class="btn">
        <button onclick="location.href='noticeDetail.do?notice_no=${noticeDetailModify.notice_no }'">취소</button>
      </div>
  </div>
</div>

<%@ include file="skin/footer.jsp"%>