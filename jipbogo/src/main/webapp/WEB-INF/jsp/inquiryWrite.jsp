<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="skin/header.jsp"%>
<script src="js/inquiry.js"></script>


<title>1:1문의</title>
<div id="container">
  <div id="sub_top_banner"> 
    <img src="img/sub_banner.jpg">
  </div>
  <div id="sub_content">
    <div class="sub_location">
      <img src="img/home_icon.png">&nbsp;> 1:1문의
    </div>
    <div class="sub_title">
      1:1문의<span class="solid_line"></span>
    </div>
    <div class="board_title1">기본정보입력</div>
    <form action="inquiryWriteAction.do" method="post" name="frm" enctype="multipart/form-data">
      <table class="in_board">
        <tr>
          <td>이름<span
            style="color: #b90000; font-weight: bold; vertical-align: middle;">
              *</span></td>
          <td><input type="text" name="name" id="insertName" onchange="return checkName()"> <span class="explain">&nbsp;&nbsp;성명을
              정확하게 입력해주세요.</span></td>
        </tr>
        <tr>
          <td>연락처<span
            style="color: #b90000; font-weight: bold; vertical-align: middle;">
              *</span></td>
          <td><input type="text" name="phone" id="insertPhone" onchange="return checkPhone()">
          <span class="explain">&nbsp;&nbsp;'-' 없이 입력해주세요.</span></td>
        </tr>
        <tr>
          <td>이메일<span
            style="color: #b90000; font-weight: bold; vertical-align: middle;">
              *</span></td>
          <td><input type="text" name="email" id="insertE" onchange="return checkEmail()"></td>
        </tr>
        <tr>
          <td>제목<span
            style="color: #b90000; font-weight: bold; vertical-align: middle;">
              *</span></td>
          <td><input type="text" name="title" style="width: 100%;" required></td>
        </tr>
        <tr>
          <td>내용</td>
          <td><textarea name="content" required></textarea></td>
        </tr>
        <tr>
          <td>첨부파일</td>
          <td><input type="file" class="file" name="file"></td>
        </tr>

      </table>

      <div class="board_title2">개인정보 수집·이용 동의</div>
      <div class="privacy">
        <div class="privacy_content">
          수집하는 개인정보의 항목<br> 회사는 회원가입, 상담, 서비스 신청 등을 위해 아래와 같은 개인정보를
          수집하고 있습니다.<br> <br> <br> - 수집항목 : 이름, 연락처, 이메일,
          주소, 제목, 내용, 첨부파일<br> - 개인정보 수집방법 : 홈페이지(회원가입)
        </div>
        <input type="checkbox" id="chk" style="background-color: white;">
        개인 정보 수집·이용에 동의합니다.
      </div>


      <div class="btn">
        <button type="submit" onclick="return agree()">글쓰기</button>
      </div>
    </form>
  </div>
</div>

<%@ include file="skin/footer.jsp"%>