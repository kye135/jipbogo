<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="skin/header.jsp"%>

<!DOCTYPE html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/paging.css">
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
    <div class="board_title">공지사항</div>
    <div class="board_search">
        <input type="text" name="board_search" placeholder="SEARCH">
		<img src="./img/board_search_icon.png">
      </div>
    <table class="board">
      <thead>
        <tr>
          <th>NO
          <th>제목
          <th>글쓴이
          <th>작성일
          <th>조회수
      <tbody>
        <c:forEach items="${notice }" var="i">
          <tr>
            <td width="10%">${i.notice_no  }
            <td width="50%"><a
              href="noticeDetail.do?notice_no=${i.notice_no  }">${i.notice_title }</a>
            <td width="20%">${i.notice_id }
            <td width="10%">${i.notice_date }
            <td width="10%">${i.notice_cnt }
        </c:forEach>
    </table>
    <c:if test="${sessionScope.id != null }">
      <div class="btn">
        <button type="submit" onclick="location.href='noticeWrite.do'">글쓰기</button>
      </div>
    </c:if>
    <div class="paging" style="text-align: center;">
      <%@include file="paging.jsp"%>
      <c:if test="${page gt 10 }">
        <button onclick="location.href='notice.do?page=${page-10 }'">&#60;&#60;</button>
      </c:if>
      <c:if test="${page gt 1 }">
        <button onclick="location.href='notice.do?page=${page-1 }'">&#60;</button>
      </c:if>
      <c:forEach var="i" begin="${startPage }" end="${endPage }">
        <c:if test="${i eq page }">
          <button id="click"
            onclick="location.href='notice.do?page=${i }'">${i }</button>
        </c:if>
        <c:if test="${i ne page }">
          <button onclick="location.href='notice.do?page=${i }'">${i }</button>
        </c:if>
      </c:forEach>
      <c:if test="${page lt totalPage }">
        <button onclick="location.href='notice.do?page=${page+1 }'">></button>
      </c:if>
      <c:if test="${page lt totalPage-10 }">
        <button onclick="location.href='notice.do?page=${page+10 }'">>></button>
      </c:if>
      <c:if test="${page eq totalPage-10 }">
        <button onclick="location.href='notice.do?page=${totalPage }'">>></button>
      </c:if>
      <c:if test="${page gt totalPage-10 && page ne totalPage }">
        <button onclick="location.href='notice.do?page=${totalPage }'">>></button>
      </c:if>
    </div>
  </div>
</div>

<%@ include file="skin/footer.jsp"%>