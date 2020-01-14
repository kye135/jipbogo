<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="skin/header.jsp"%>

<!DOCTYPE html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/qnaDetail.css">
<title>운영주 Q&A</title>
<div id="container">
  <div id="sub_top_banner">
    <img src="img/sub_banner.jpg">
  </div>
  <div id="sub_content">
    <div class="sub_location">
      <img src="img/home_icon.png">&nbsp;> Q&A
    </div>
    <div class="sub_title">
      Q&A<span class="solid_line"></span>
    </div>
    <table class="board detail">
      <thead>
        <tr>
          <th>
            <div class="detailTitle">${sellerQnaDetail.seller_qna_title }</div>
            <div class="detailId">작성자&nbsp;${sellerQnaDetail.seller_qna_id }&nbsp;|&nbsp;${sellerQnaDetail.seller_qna_date }&nbsp;|&nbsp;조회수&nbsp;${sellerQnaDetail.seller_qna_cnt }</div>
      <tbody>
        <tr>
          <td>
            <div class="detailContent">${sellerQnaDetail.seller_qna_content }</div>
    </table>

    <div class="btn">
      <button class="detailModifyButton" type="submit"
        onclick="location.href='sellerQna.do'">목록</button>
      <button type="submit"
        onclick="location.href='sellerQnaDetailDelete.do?seller_qna_no=${sellerQnaDetail.seller_qna_no }'">글삭제</button>
      <button type="submit"
        onclick="location.href='sellerQnaDetailModifyData.do?seller_qna_no=${sellerQnaDetail.seller_qna_no }'">글수정</button>
    </div>

    <c:if test="${sessionScope.id != null }">
      <div class="commentBox">
        <div class="commentBoxDiv">댓글쓰기</div>
        <form action="sellerQnaCommentAction.do" method="post">
          <textarea name="content" class="content"></textarea>
          <div class="commnetButtonLocation">
            <input type="hidden" name="seller_qna_no"
              value="${sellerQnaDetail.seller_qna_no }">
            <button class="commentButton" type="submit">확인</button>
          </div>
        </form>
      </div>
    </c:if>

    <c:if test="${sessionScope.id == null }">
      <div class="nullBottom"></div>
    </c:if>

    <div class="commentText">
      <c:forEach items="${sellerQnaComment }" var="i">
        <div class="commentTextBox">
          <div class="commentTextId">
            작성자&nbsp;<b>${i.seller_id }</b>&nbsp;|&nbsp;<span
              class="commentDate">${i.comment_date }</span>
          </div>
          <div>${i.comment_content }</div>

          <div class="commentTextModify">
            <c:if test="${sessionScope.id != null }">
              <a class="detailLink" href="#">수정</a>&nbsp;|&nbsp;
              <a class="detailLink" href="#">삭제</a>
            </c:if>
          </div>
        </div>
      </c:forEach>
    </div>
  </div>
</div>

<%@ include file="skin/footer.jsp"%>

