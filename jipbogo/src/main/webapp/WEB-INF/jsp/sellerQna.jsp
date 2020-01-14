<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="skin/header.jsp"%>

<!DOCTYPE html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/paging.css">
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
    <div class="board_btn">
      <a href="userQna.do">입주자 Q&A</a> <a href="sellerQna.do">운영주
        Q&A</a>
    </div>
    <div class="board_title">운영주 Q&A</div>
    <div class="board_search">
        <input type="text" name="board_search" placeholder="SEARCH">
		<img src="./img/board_search_icon.png">
      </div>
    <table class="board">
      <thead>
        <tr>
          <th>NO</th>
          <th>제목</th>
          <th>글쓴이</th>
          <th>작성일</th>
          <th>조회수</th>
      <tbody>
        <c:forEach items="${sellerQna }" var="i">
          <tr>
            <td width="10%">${i.seller_qna_no }
            <td width="50%"><a
              href="sellerQnaDetail.do?seller_qna_no=${i.seller_qna_no }">${i.seller_qna_title }</a>
            <td width="20%">${i.seller_qna_id }
            <td width="10%">${i.seller_qna_date }
            <td width="10%">${i.seller_qna_cnt }
        </c:forEach>
    </table>
    <c:if
      test="${sessionScope.id != null && (sessionScope.type == 's' || sessionScope.type == 'a') }">
      <div class="btn">
        <button type="submit"
          onclick="location.href='sellerQnaWrite.do'">글쓰기</button>
      </div>
    </c:if>
    <div class="paging" style="text-align: center;">
      <%@include file="paging.jsp"%>
      <c:if test="${page gt 10 }">
        <button onclick="location.href='sellerQna.do?page=${page-10 }'"><<</button>
      </c:if>
      <c:if test="${page gt 1 }">
        <button onclick="location.href='sellerQna.do?page=${page-1 }'"><</button>
      </c:if>
      <c:forEach var="i" begin="${startPage }" end="${endPage }">
        <c:if test="${i eq page }">
          <button onclick="location.href='sellerQna.do??page=${i }'"
            id="click">${i }</button>
        </c:if>
        <c:if test="${i ne page }">
          <button onclick="location.href='sellerQna.do?page=${i }'">${i }</button>
        </c:if>
      </c:forEach>
      <c:if test="${page lt totalPage }">
        <button onclick="location.href='sellerQna.do?page=${page+1 }'">></button>
      </c:if>
      <c:if test="${page lt totalPage-10 }">
        <button onclick="location.href='sellerQna.do?page=${page+10 }'">>></button>
      </c:if>
      <c:if test="${page eq totalPage-10 }">
        <button
          onclick="location.href='sellerQna.do?page=${totalPage }'">>></button>
      </c:if>
      <c:if test="${page gt totalPage-10 && page ne totalPage}">
        <button
          onclick="location.href='sellerQna.do?page=${totalPage }'">>></button>
      </c:if>
    </div>
  </div>
</div>

<%@ include file="skin/footer.jsp"%>