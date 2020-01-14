<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="skin/header.jsp"%>

<!DOCTYPE html>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>운영주 Q&A 글쓰기</title>

<div id="container">
  <div id="sub_top_banner">
    <img src="img/sub_banner.jpg">
  </div>
  <div id="sub_content">
    <div class="sub_location">
      <img src="img/home_icon.png"> > 운영주 Q&A
    </div>
    <div class="sub_title">
      운영주 Q&A<span class="solid_line"></span>
    </div>
    <div class="board_title1">글쓰기</div>
    <form action="sellerQnaWriteAction.do" method="post">
      <input type="hidden" name="id" value="${sessionScope.id }">
      <input type="hidden" name="pw" value="${sessionScope.pw }">
      <table class="in_board wirte">
        <tr>
          <td>제목
          <td><input type="text" name="title" style="width: 100%;" required>
        <tr>
          <td>내용
          <td><textarea name="content" required></textarea>
        <tr>
          <td>첨부파일
          <td><input type="file" class="file">
      </table>
      <div class="btn">
        <button type="submit">글쓰기</button>
        <button type="submit" onclick="location.href='sellerQna.do'">취소</button>
      </div>
    </form>
  </div>
</div>


<%@ include file="skin/footer.jsp"%>