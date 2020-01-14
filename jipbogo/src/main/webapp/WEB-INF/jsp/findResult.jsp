<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>아이디 찾기</title>
<style>
#join_box ul.sign_tab {
  border-bottom: 3px solid #ffc200;
}

#join_box ul.sign_tab li.current {
  background-color: #ffc200;
}

#join_box .join_btn {
  padding-top: 0px;
}

#login_box .id_info {
  font-size: 12pt;
  text-align: center;
  border: 1px solid #ccc;
  text-align: center;
  width: 264px;
  margin: 0 auto;
  padding: 16px 0;
  background: #f9f9f9;
}
</style>

<%@ include file="skin/header.jsp"%>

<div id="container" class="page_bg">
  <div id="login_box">
    <div class="login_title">아이디 찾기</div>
    <div class="id_info">
      <c:forEach items="${find }" var="i">
			아이디 : <span style="color: #666;"> ${i.user_id } </span>
        <br>
			가입일 : <span style="color: #666;"> ${i.user_date }</span>
      </c:forEach>
    </div>
    <div class="join_btn">
      <ul>
        <li>
          <button type="submit">
            <a href="login.do">로그인하기</a>
          </button>
        </li>
        <li>
          <button type="submit">
            <a href="find.do">비밀번호찾기</a>
          </button>
        </li>
      </ul>
    </div>
  </div>
</div>

<%@ include file="skin/footer.jsp"%>