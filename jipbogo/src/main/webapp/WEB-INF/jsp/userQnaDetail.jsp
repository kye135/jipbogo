<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="skin/header.jsp"%>

<!DOCTYPE html>

<script>
function change(no) {
	var textArea = '<textarea></textarea>';
	document.getElementById("reply").innerHTML = textArea;
}
</script>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/qnaDetail.css">
<title>입주자 Q&A</title>
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
            <div class="detailTitle">${userQnaDetail.user_qna_title }</div>
            <div class="detailId">작성자&nbsp;${userQnaDetail.user_qna_id }&nbsp;|&nbsp;${userQnaDetail.user_qna_date }&nbsp;|&nbsp;조회수&nbsp;${userQnaDetail.user_qna_cnt }</div>
      <tbody>
        <tr>
          <td>
            <div class="detailContent">${userQnaDetail.user_qna_content }</div>
    </table>

    <div class="btn">
      <button class="detailModifyButton" type="submit"
        onclick="location.href='userQna.do'">목록</button>
      <button type="submit"
        onclick="location.href='userQnaDetailDelete.do?user_qna_no=${userQnaDetail.user_qna_no }'">글삭제</button>
      <button type="submit"
        onclick="location.href='userQnaDetailModifyData.do?user_qna_no=${userQnaDetail.user_qna_no }'">글수정</button>
    </div>

    <c:if test="${sessionScope.id != null }">
      <div class="commentBox">
        <div class="commentBoxDiv">댓글쓰기</div>
        <form action="userQnaCommentAction.do" method="post">
          <textarea name="content" class="content"></textarea>
          <div class="commnetButtonLocation">
            <input type="hidden" name="user_qna_no"
              value="${userQnaDetail.user_qna_no }">
            <button class="commentButton" type="submit">확인</button>
          </div>
        </form>
      </div>
    </c:if>

    <c:if test="${sessionScope.id == null }">
      <div class="nullBottom"></div>
    </c:if>

    <div class="commentText">
      <c:forEach items="${userQnaComment }" var="i">
      <%-- <c:if test="${i.comment_no eq '25' }"> --%>
        <div class="commentTextBox">
          <div class="commentTextId">
            작성자&nbsp;<b>${i.user_id }</b>&nbsp;|&nbsp; <span
              class="commentDate">${i.comment_date }</span>
          </div> <!-- commentTextId -->
          
          <div id="reply">
            <input type="hidden" id="comment_no" value="${i.comment_no }">${i.comment_content }
          </div>

          <div class="commentTextModify">
            <c:if test="${sessionScope.id != null }">
              <%-- <a class="detailLink" href="#"
                onclick="location.href='userQnaCommentModifyData.do?comment_no=${i.comment_no }'">수정</a>&nbsp;|&nbsp; --%>
                
                <a class="detailLink" href="#" onclick="change('${i.comment_no }')">수정</a>&nbsp;|&nbsp;
                <a class="detailLink" href="#" 
                  onclick="location.href='userQnaCommentDelete.do?comment_no=${i.comment_no }&user_qna_no=${i.user_qna_no }'">삭제</a>
            </c:if>
          </div> <!-- commentTextModify -->
        </div> <!-- commentTextBox -->
        <%-- </c:if> --%>
      </c:forEach>
    </div>
  </div>
</div>

<%@ include file="skin/footer.jsp"%>

