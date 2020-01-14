<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="skin/header.jsp"%>

<!DOCTYPE html>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>입주자 Q&A 댓글수정</title>

<div id="container">
  <div id="sub_top_banner">
    <img src="img/sub_banner.jpg">
  </div>
  <div id="sub_content">
    <div class="sub_location">
      <img src="img/home_icon.png"> > 입주자 Q&A
    </div>
    <div class="sub_title">
      입주자 Q&A<span class="solid_line"></span>
    </div>
    <div class="board_title1">댓글수정</div>

    <form action="userQnaCommentModifyAction.do" method="post">
      <table class="in_board wirte">
        <tr>
          <td>내용
          <td><textarea name="content">${userQnaDetailModify.comment_content }</textarea>
      </table>
      <div class="btn">
        <input type="hidden" name="user_qna_no" value="${userQnaDetailModify.user_qna_no }">
        <input type="hidden" name="comment_no" value="${userQnaDetailModify.comment_no }">
        <button type="submit">글수정</button>
      </div>
    </form>
    <div class="btn">
      <button
        onclick="location.href='userQnaDetail.do?user_qna_no=${userQnaDetailModify.user_qna_no }'">취소</button>
    </div>
  </div>
</div>

<%@ include file="skin/footer.jsp"%>