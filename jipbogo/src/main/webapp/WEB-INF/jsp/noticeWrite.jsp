<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="skin/header.jsp"%>

<!DOCTYPE html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>공지사항 글쓰기</title>
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
    <div class="board_title1">글쓰기</div>
    <form action="noticeWriteAction.do" method="post">
      <input type="hidden" name="id" value="${sessionScope.id }">
      <input type="hidden" name="pw" value="${sessionScope.pw }">
      <table class="in_board wirte">
        <!--
        <tr>
          <td>아이디</td>
          <td><input type="text" name="id"></td>
        </tr>
        <tr>
          <td>패스워드</td>
          <td><input type="password" name="pw"><span
            class="explain">&nbsp;&nbsp;삭제, 수정시 필요합니다.</span></td>
        </tr>
          -->

        <tr>
          <td>제목</td>
          <td><input type="text" name="title" style="width: 100%;"
            required></td>
        </tr>
        <tr>
          <td>내용</td>
          <td><textarea name="content" required></textarea></td>
        </tr>
        <tr>
          <td>첨부파일</td>
          <td><input type="file" class="file"></td>
        </tr>

      </table>

      <div class="btn">
        <button type="submit">글쓰기</button>
        <button type="submit" onclick="location.href='notice.do'">취소</button>
      </div>
    </form>
  </div>
</div>

<%@ include file="skin/footer.jsp"%>