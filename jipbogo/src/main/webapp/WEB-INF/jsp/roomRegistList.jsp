<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="skin/header.jsp"%>

<!DOCTYPE html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/paging.css">
<title>내가 등록한 방</title>
<div id="container">
  <div id="sub_top_banner">
    <img src="img/sub_banner.jpg">
  </div>
  <div id="sub_content">
    <div class="sub_location">
      <img src="img/home_icon.png">&nbsp;> 내가 등록한 방
    </div>
    <div class="sub_title">
      	내가 등록한 방<span class="solid_line"></span>
    </div>
    <table class="board">
      <thead>
        <tr>
          <th>NO
          <th>집이름
          <th>주소
          <th>등록일
      <tbody>
        <c:forEach items="${roomRegistList }" var="i">
          <tr>
            <td width="10%">${i.house_no }
            <td width="60%"><a href="roomDetailRegist.do?house_no=${i.house_no }">${i.house_name }</a>
            <td width="20%">${i.house_addr2 }
            <td width="10%">${i.house_date }
        </c:forEach>
    </table>
    <c:if test="${sessionScope.id != null && (sessionScope.type == 'b' || sessionScope.type == 'c' || sessionScope.type == 'a') }">
      <div class="btn">
        <button type="submit" onclick="location.href='roomRegist.do'">방등록</button>
      </div>
    </c:if>
    
    <div class="paging" style="text-align: center;">
      <%@include file="paging.jsp"%>
      <c:if test="${page gt 10 }">
        <button onclick="location.href='roomRegistList.do?page=${page-10 }'">&#60;&#60;</button>
      </c:if>
      <c:if test="${page gt 1 }">
        <button onclick="location.href='roomRegistList.do?page=${page-1 }'">&#60;</button>
      </c:if>
      <c:forEach var="i" begin="${startPage }" end="${endPage }">
        <c:if test="${i eq page }">
          <button id="click"
            onclick="location.href='roomRegistList.do?page=${i }'">${i }</button>
        </c:if>
        <c:if test="${i ne page }">
          <button onclick="location.href='roomRegistList.do?page=${i }'">${i }</button>
        </c:if>
      </c:forEach>
      <c:if test="${page lt totalPage }">
        <button onclick="location.href='roomRegistList.do?page=${page+1 }'">></button>
      </c:if>
      <c:if test="${page lt totalPage-10 }">
        <button onclick="location.href='roomRegistList.do?page=${page+10 }'">>></button>
      </c:if>
      <c:if test="${page eq totalPage-10 }">
        <button onclick="location.href='roomRegistList.do?page=${totalPage }'">>></button>
      </c:if>
      <c:if test="${page gt totalPage-10 && page ne totalPage}">
        <button onclick="location.href='roomRegistList.do?page=${totalPage }'">>></button>
      </c:if>      
    </div>
 
  </div>
</div>

<%@ include file="skin/footer.jsp"%>