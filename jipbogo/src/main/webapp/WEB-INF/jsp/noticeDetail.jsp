<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="skin/header.jsp"%>

<!DOCTYPE html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/qnaDetail.css">
<title>공지사항</title>
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

    <table class="board detail">
      <thead>
        <tr>
          <th>
            <div class="detailTitle">
              ${noticeDetail.notice_title }</div>
            <div class="detailId">작성자&nbsp;${noticeDetail.notice_id }&nbsp;|&nbsp;${noticeDetail.notice_date }&nbsp;|&nbsp;조회수&nbsp;${noticeDetail.notice_cnt }</div>
      </thead>
      <tbody>
        <tr>
          <td>
            <div class="detailContent">
              ${noticeDetail.notice_content }</div>
      </tbody>
    </table>
    <div class="btn">
      <button class="detailModifyButton" type="submit" onclick="location.href='notice.do'"
        >목록</button>
      <button type="submit"
        onclick="location.href='noticeDetailDelete.do?notice_no=${noticeDetail.notice_no }'">
        글삭제</button>
      <button type="submit"
        onclick="location.href='noticeDetailModifyData.do?notice_no=${noticeDetail.notice_no }'"
        >글수정</button>
    </div>

    <c:if test="${sessionScope.id != null }">
      <div class="commentBox">
        <div class="commentBoxDiv">댓글쓰기</div>
        <form action="noticeCommentAction.do" method="post">
          <textarea name="content" class="content"></textarea>
          <div style="text-align: right;">
            <input type="hidden" name="notice_no"
              value="${noticeDetail.notice_no }">
            <button class="commentButton" type="submit"
              id="commentBtn">확인</button>
          </div>
        </form>
      </div>
    </c:if>
    <c:if test="${sessionScope.id == null }">
      <div class="nullBottom"></div>
    </c:if>
    <div id="commentText"">
      <c:forEach items="${noticeComment }" var="i">
        <div class="commentTextBox">
          <div class="commentTextId">
            작성자&nbsp;<b>${i.notice_id }</b>&nbsp;|&nbsp;<span
              class="commentDate">${i.comment_date }</span>
          </div>
          <div>${i.comment_content }</div>
          <div class="commentTextModify">
            <c:if test="${sessionScope.id != null }">
              <a class="detailLink" href="#">수정</a>&nbsp;|&nbsp;<a class="detailLink" href="#">삭제</a>
            </c:if>
          </div>
        </div>
      </c:forEach>
    </div>
  </div>
</div>
<%@ include file="skin/footer.jsp"%>

